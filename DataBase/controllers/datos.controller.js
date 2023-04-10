const path = require("path")
const session = require("express-session")

/**
 * Gets the datos page
 * @param {*} req - Request
 * @param {*} res - Response
 */
exports.getDatos = (req, res) => {
  res.render("static/datos.ejs", {
    username: req.session.username,
  })
}

/**
 * Posts the datos page
 * @param {*} req
 * @param {*} res
 */
exports.postDatos = (req, res) => {
  res.render(path.join(__dirname, "../views/static/datos.ejs"))
}
