const mongoose = require("mongoose");

// importing models
const ChatModel = require("../models/chat");
const AiResModel = require("../models/ai_response");
const RehabCoursesModel = require("../models/rehab_courses");

// importing data files
const chatData = require("./data/chat_data");
const aiResData = require("./data/ai_res_data");
const rehabCoursesData = require("./data/rehab_courses_data");

// database setup
main()
  .then(() => {
    console.log("DB connection is successful!");
  })
  .catch((err) => console.log(err));

async function main() {
  await mongoose.connect("mongodb://127.0.0.1:27017/jli");
}

const initChatDB = async () => {
  await ChatModel.deleteMany({});

  /** THIS WILL BE USED TO ADD MORE ENTRIES IN THE INDIVIDUAL DOCS OF COLLECTIONS
   * 
   * chatData.data = chatData.data.map((obj) => ({
    ...obj,
    key: value,
    key:value,
  }));
   * 
   */

  await ChatModel.insertMany(chatData.data);
  console.log("chat data was initialised");
};

const initAiResDB = async () => {
  await AiResModel.deleteMany({});

  /** THIS WILL BE USED TO ADD MORE ENTRIES IN THE INDIVIDUAL DOCS OF COLLECTIONS
     * 
     * aiResData.data = aiResData.data.map((obj) => ({
      ...obj,
      key: value,
      key:value,
    }));
     * 
     */

  await AiResModel.insertMany(aiResData.data);
  console.log("ai response data was initialised");
};

const intiRehabCoursesDB = async () => {
  await RehabCoursesModel.deleteMany({});

  /** THIS WILL BE USED TO ADD MORE ENTRIES IN THE INDIVIDUAL DOCS OF COLLECTIONS
     * 
     * rehabCoursesData.data = rehabCoursesData.data.map((obj) => ({
      ...obj,
      key: value,
      key:value,
    }));
     * 
     */

  await RehabCoursesModel.insertMany(rehabCoursesData.data);
  console.log("rehab courses data was initialised");
};

function initDB() {
  initChatDB();
  initAiResDB();
  intiRehabCoursesDB();
}

initDB();
