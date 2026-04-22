const express = require('express')
const app = express()
const PORT = process.env.PORT || 3000
app.get('/', (req, res) => res.send('Bot WhatsApp OK'))
app.listen(PORT, () => console.log(`Fake server sur port ${PORT}`))
