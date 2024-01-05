const mongoose = require("mongoose");
const app = require("./app");
const cors = require("cors");
const config = require("./config/config");

let server;
const port = config.port;

// TODO: CRIO_TASK_MODULE_UNDERSTANDING_BASICS - Create Mongo connection and get the express app to listen on config.port
const corsOptions = {
  origin: ["https://qkartlaptop.netlify.app", "http://localhost:3000"],
  credentials: true,
};
app.use(cors(corsOptions));
// app.options("*", cors());
mongoose
  .connect(config.mongoose.url, config.mongoose.options)
  .then(() => {
    console.log("Connected to database", config.mongoose.url);
    server = app.listen(port, () => {
      console.log(`Server listening on port ${port}`);
    });
  })
  .catch((err) => console.log(err));
