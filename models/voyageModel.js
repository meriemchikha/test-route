const test = require("../database");

const voyageModel = {
queryGetAllVoyages: () => {
    return test.query("select * from voyage");
  },
}

module.exports = voyageModel;