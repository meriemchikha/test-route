const test = require("../database");

const userModel = {
    queryGetAllClients: () => {
    return test.query("select * from client");
  },
}

module.exports = userModel;