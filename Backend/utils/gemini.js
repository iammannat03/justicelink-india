const { GoogleGenerativeAI } = require("@google/generative-ai");
const genAI = new GoogleGenerativeAI(process.env.API_KEY);

let run = async () => {
  // For text-only input, use the gemini-pro model
  const model = genAI.getGenerativeModel({ model: "gemini-pro" });

  const prompt = "what did i ask you previously";

  const result = await model.generateContent(prompt);
  const response = await result.response;
  const text = response;
  console.log(text);
};

module.exports = run;
