require('dotenv').config()
const app = require('express')()
app.get('/', (req, res) => res.send("Hello"))
app.listen(process.env.PORT, () => console.info(`Server listening at ${process.env.PORT}`))