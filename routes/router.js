// importer express
const express = require("express");
// importer le router d'express
const router = express.Router();

const userController =  require("../controller/userController");
const transportController = require("../controller/transportController");
const paiementController = require("../controller/paiementController");
const reservationController = require("../controller/reservationController");
const voyageController = require ("../controller/voyageController");

// creer nos routes

router.get("/clients", userController.getAllClient);
router.get("/reservations", userController.getAllReservation);
router.get("/voyages", userController.getAllVoyage);
router.get("/transports", userController.getAllTransport);
router.get("/paiements", userController.getAllPaiement);

router.post("/clients", userController.addNewClient);
router.post("/reservations", reservationController.addNewResa);
router.post("/paiements", paiementController.addNewPaiement);


router.delete("/clients/:id", userController.deleteClientById);

module.exports = router;