const path = require("path");
const User = require("../models/users.model");
const bcrypt = require("bcryptjs");

exports.getSignup = (req, res) => {
  res.render(path.join(__dirname, "../views/static/signup.ejs"));
};

exports.postSignup = (req, res) => {
  const nuevoUsuario = new User({
    username: req.body.username,
    password: req.body.password,
  });

  nuevoUsuario
    .save()
    .then((result) => {
      console.log(result);
    })
    .catch((err) => {
      console.log(err);
    });

  res.redirect("/");
};

exports.logout = (req, res) => {
  req.session.destroy();
  res.redirect("/");
};

/**
 * @brief
 * Gets the login page
 * @param {String} "/" Route
 * @param {Function} Callback function - Renders the login page
 * @return {void} - Returns nothing
 */
exports.getLogIn = (request, response) => {
  let mensaje = "";

  if (request.session.mensaje) {
    mensaje = request.session.mensaje;
    request.session.mensaje = "";
  }

  console.log(mensaje);

  response.render("static/index.ejs", {
    mensaje: mensaje,
    csrfToken: request.csrfToken,
  });
};

/**
 * @brief
 * Post request for the login page
 * @param {*} request - Request object
 * @param {*} response - Response object
 * @return {void} - Returns nothing
 */
exports.postLogIn = (request, response) => {
  User.fetchOne(request.body.username).then(([rows, fieldData]) => {
    if (rows.length > 0) {
      bcrypt
        .compare(request.body.password, rows[0].password)
        .then((doMatch) => {
          if (doMatch) {
            request.session.isLoggedIn = true;
            request.session.username = rows[0].username;

            User.getPrivileges(rows[0].username).then(([rows, fieldData]) => {
              console.log(rows);

              const privilegios = [];

              for (let i = 0; i < rows.length; i++) {
                privilegios.push(rows[i].privilegio);
              }

              console.log(privilegios);

              return request.session.save((err) => {
                response.redirect("/datos");
              });
            });
          } else {
            request.session.mensaje = "Contraseña incorrecta";
            response.redirect("/");
          }
        })

        .catch((err) => {
          console.log(err);
        });
    } else {
      request.session.mensaje = "Usuario no encontrado";
      response.redirect("/");
    }
  });
};
