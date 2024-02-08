const transportModel = require("../models/transportModel");

const transportController = {
    getAllTransport: async (req, res) => {
       const [returnModel] = await transportModel.queryGetAllTransports();
       res.send(returnModel);
  },
}

module.exports = transportController;