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

  };



module.exports = userController;