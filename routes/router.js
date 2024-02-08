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
router.get("/reservations", reservationController.getAllReservation);
router.get("/voyages", voyageController.getAllVoyage);
router.get("/transports", transportController.getAllTransport);
router.get("/paiements", paiementController.getAllPaiement);

router.post("/clients", userController.addNewClient);
router.post("/reservations", reservationController.addNewResa);
router.post("/paiements", paiementController.addNewPaiement);



module.exports = router;