const test = require("../database");

const transportModel = {
    queryGetAllTransports: () => {
    return test.query("select * from transport");
  },
}

module.exports = transportModel;