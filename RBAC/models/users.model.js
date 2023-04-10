const database = require("../utils/dataBase")
const bcrypt = require("bcryptjs")

module.exports = class User {
  constructor(user) {
    this.username = user.username || "admin"
    this.password = user.password || "admin"
  }

  save() {
    return bcrypt
      .hash(this.password, 12)
      .then((hashedPassword) => {
        return database.execute(
          `insert into usuarios (username, password) values (?, ?)`,
          [this.username, hashedPassword]
        )
      })
      .catch((err) => {
        console.log(err)
      })
  }

  static fetchOne(username) {
    return database.execute(`select * from usuarios where username = ?`, [
      username,
    ])
  }

  static getPrivileges(username) {
    return database.execute(
      `select *
       from privilegio p, usuarios u, rol r, rolprivilegio rp, usuariorol ur
       where u.username = ? and u.idUsuario = ur.idUsuario
       and r.idRol = ur.idRol and r.idRol = rp.idRol and p.idPrivilegio = rp.idPrivilegio`,
      [username]
    )
  }
}
