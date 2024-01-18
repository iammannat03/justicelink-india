require("dotenv").config();

const express = require("express");
const app = express();
const { GoogleGenerativeAI } = require("@google/generative-ai");
const genAI = new GoogleGenerativeAI(process.env.API_KEY);

async function run() {
  // For text-only input, use the gemini-pro model
  const model = genAI.getGenerativeModel({ model: "gemini-pro" });

  const prompt = "Describe Ram Mandir inauguration like a disneyland";

  const result = await model.generateContent(prompt);
  const response = await result.response;
  const text = response.text();
  console.log(text);
}

run();

app.get("/", (req, res) => {
  res.send("Welcome to Justice Link");
});

app.listen(8080, () => {
  console.log("app is listening on port 8080");
});
