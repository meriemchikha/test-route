const userModel = require("../models/userModel");

const userController = {
getAllClient: async (req, res) => {
const [returnModel] = await userModel.queryGetAllClients();
  res.send(returnModel);
  },
     
addNewClient: async (req, res) => {
    try {
      const client = req.body;
      const [result] = await userModel.queryAddNewClient(client);
      if (result.affectedRows) {
        res.send(`Nouveau client créé avec l'id : ${result.insertId}`);
      } else {
        res.status(401).send("probleme de mise de jour");
      }
    } catch (error) {
      res.status(500).send(error);
    }
  },
  };

module.exports = userController;