const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const chatSchema = new Schema({
  messages: {
    sent: {
      type: String,
      default: null,
    },
    recieved: {
      type: String,
      default: null,
    },
  },
  date: {
    type: Date,
    default: Date.now(),
  },
});

const Chat = new mongoose.model("Chat", chatSchema);
module.exports = Chat;
