const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const rehabCoursesSchema = new Schema({
  content: {
    media: {
      video: String,
    },
    comments: Number,
    likes: Number,
  },
  dateUploaded: {
    type: Date,
    default: Date.now(),
  },
});

const Rehabcourses = new mongoose.model("Rehabcourses", rehabCoursesSchema);
module.exports = Rehabcourses;
