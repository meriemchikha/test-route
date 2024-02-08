const voyageModel = require("../models/voyageModel");

const voyageController = {
getAllVoyage: async (req, res) => {
       const [returnModel] = await voyageModel.queryGetAllVoyages();
       res.send(returnModel);
  },
}

module.exports = voyageController;
