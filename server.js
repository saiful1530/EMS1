const express = require("express");
const cors = require("cors");
const path = require("path");

const employeeRoutes = require("./routes/employees");

const app = express();
const PORT = 5000;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, "public")));

app.use("/employees", employeeRoutes);

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "login.html"));
});

app.listen(PORT, () => {
  console.log(`Employee Management System running at http://localhost:${PORT}`);
});