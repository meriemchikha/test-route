const paiementModel = require("../models/paiementModel");

const paiementController = {
    getAllPaiement: async (req, res) => {
       const [returnModel] = await paiementModel.queryGetAllPaiements();
       res.send(returnModel);
  },
   addNewPaiement: async (req, res) => {
    try {
      const paiement = req.body;
      const [result] = await paiementModel.queryAddNewPaiement(paiement);
      if (result.affectedRows) {
        res.send(`paiement validé correspondant à l'id : ${result.insertId}`);
      } else {
        res.status(401).send("Problème");
      }
    } catch (error) {
      res.status(500).send(error);
    }
  },
}

module.exports = paiementController;