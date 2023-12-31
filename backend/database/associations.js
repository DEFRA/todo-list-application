const sequelize = require("./db-config.js");
const session = require("express-session");
const SequelizeStore = require("connect-session-sequelize")(session.Store);
const User = require("./model/User");
const Task = require("./model/Task");
const Collection = require("./model/Collection");
const Priority = require("./model/Priority");
const MediaBlob = require("./model/MediaBlob");

User.hasMany(Task);
Task.belongsTo(User);
Collection.belongsTo(User);
Collection.hasMany(Task);
Task.belongsTo(Collection);
Task.hasOne(Priority);
Priority.belongsTo(Task);
User.hasMany(Collection);
Task.hasMany(MediaBlob);
MediaBlob.belongsTo(Task);

const sessionStore = new SequelizeStore({
  db: sequelize,
});

sequelize
  .sync({ force: true })
  .then(() => {
    console.log("Models synced successfully!");
  })
  .catch((error) => {
    console.error("Unable to sync models: ", error.message);
  });

module.exports = {
  User,
  Task,
  MediaBlob,
  Collection,
  Priority,
  sessionStore,
};
