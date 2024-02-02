const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const aiSchema = new Schema({
  response: {
    type: String,
    required: true,
  },
  date: {
    type: Date,
    default: Date.now(),
  },
});

const Airesponse = new mongoose.model("Airesponse", aiSchema);
module.exports = Airesponse;
