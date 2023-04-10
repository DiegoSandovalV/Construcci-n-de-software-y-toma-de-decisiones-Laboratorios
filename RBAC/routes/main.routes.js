const express = require("express")
const router = express.Router()
const path = require("path")
const bodyParser = require("body-parser")

//Body parser config
router.use(bodyParser.urlencoded({ extended: true }))

// Defining Routes
/**
 * @brief
 * Michi Page Route. Contains a list of cards with images and descriptions.
 * @param {string} "/michi" - Michi Page Route
 * @param {function} callback - Callback function
 * @return {void} - Returns nothing
 */
const michiController = require("../controllers/michi.controller")
router.get("/michi", michiController.getMichi)

/**
 * @brief
 * Perro page
 * @param {String} "/Perro" Route
 * @param {Function} Callback function - Sends a file
 * @return {void} - Returns nothing
 */
const perroController = require("../controllers/perro.controller")
router.get("/perro", perroController.getPerro)

/**
 * @brief
 * Ajolote page
 * @param {String} "/Ajolote" Route
 * @param {Function} Callback function - Sends a file
 * @return {void} - Returns nothing
 */
const ajoloteController = require("../controllers/ajolote.controller")
router.get("/ajolote", ajoloteController.getAjolote)

/**
 * @brief
 * Datos page
 * @param {String} "/Datos" Route
 * @param {Function} Callback function - Sends a file
 * @return {void} - Returns nothing
 */
const datosController = require("../controllers/datos.controller")
router.get("/datos", datosController.getDatos)

/**
 * @brief
 * signup page
 * @param {String} "/signup" Route
 * @param {Function} Callback function - Sends a file
 * @return {void} - Returns nothing
 */

const userController = require("../controllers/users.controller")
router.get("/signup", userController.getSignup)
router.post("/signup", userController.postSignup)

router.get("/", userController.getLogIn)
router.post("/", userController.postLogIn)

// Exporting Routes
module.exports = router
