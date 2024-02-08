const reservationModel = require("../models/reservationModel");

const reservationController = {
    getAllReservation: async (req, res) => {
       const [returnModel] = await reservationModel.queryGetAllReservations();
       res.send(returnModel);
  },
   addNewResa: async (req, res) => {
    try {
      const resa = req.body;
      const [result] = await reservationModel.queryAddNewResa(resa);
      if (result.affectedRows) {
        res.send(`Nouvelle réservation créée avec l'id : ${result.insertId}`);
      } else {
        res.status(401).send("Problème");
      }
    } catch (error) {
      res.status(500).send(error);
    }
  },
}

module.exports = reservationController;