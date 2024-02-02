// importer express
const express = require("express");
// importer le router d'express
const router = express.Router();

const userController =  require("../controller/userController");
// creer nos routes

router.get("/clients", userController.getAllClient);
router.get("/reservations", userController.getAllReservation);
router.get("/voyages", userController.getAllVoyage);
router.get("/transports", userController.getAllTransport);
router.get("/paiements", userController.getAllPaiement);
module.exports = router;