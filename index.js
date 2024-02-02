import express from "express";

const app = express()
const port = 3000

app.get("/", (_req, res) => {
  res.send("Dokimion")
})

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`)
})