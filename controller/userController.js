const userModel = require("../models/userModel");


const userController = {
getAllClient: async (req, res) => {
const [returnModel] = await userModel.queryGetAllClients();
  res.send(returnModel);
  },
    
    getAllReservation: async (req, res) => {
       const [returnModel] = await userModel.queryGetAllReservations();
       res.send(returnModel);
  },

     getAllVoyage: async (req, res) => {
       const [returnModel] = await userModel.queryGetAllVoyages();
       res.send(returnModel);
  },

     getAllTransport: async (req, res) => {
       const [returnModel] = await userModel.queryGetAllTransports();
       res.send(returnModel);
  },

     getAllPaiement: async (req, res) => {
       const [returnModel] = await userModel.queryGetAllPaiements();
       res.send(returnModel);
  },

    deleteClientById: async (req, res) => {

     try {
      const {id} = req.params; 
      const [result] = await userModel.queryDeleteClientById(id);

      if (result.affectedRows) {
        res.send(`Client avec l'id ${id} supprimé avec succès`);
      } else {
        res.status(404).send("Client non trouvé");
      }
    } catch (error) {
      res.status(500).send(error);
    }
  }, addNewClient: async (req, res) => {
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

