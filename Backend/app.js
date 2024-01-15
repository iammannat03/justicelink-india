const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Welcome to Justice Link");
});

app.listen(8080, () => {
  console.log("app is listening on port 8080");
});
