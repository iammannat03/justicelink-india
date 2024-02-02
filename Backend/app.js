// adding the path for environment variable file
if (process.env.NODE_ENV != "production") {
  require("dotenv").config();
}

// importing all the installed packages
const express = require("express");
const app = express();
const run = require("./utils/gemini");
const mongoose = require("mongoose");
const path = require("path");

// importing the models
const AiResModel = require("./models/ai_response");
const ChatModel = require("./models/chat");

// setting engines and paths
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// database setup
main()
  .then(() => {
    console.log("DB connection is successful!");
  })
  .catch((err) => console.log(err));

async function main() {
  await mongoose.connect("mongodb://127.0.0.1:27017/jli");
}

// app routes
app.get("/", (req, res) => {
  res.render("root.ejs");
});

// app.listen()
app.listen(8080, () => {
  console.log("app is listening on port 8080");
});
