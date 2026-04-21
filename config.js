const fs = require('fs')
const chalk = require('chalk')

//======== COIGNY V4 CONFIG ========//
global.botname = "COIGNY V4"
global.ownername = "JEANVIRUS" // Mets ton nom
global.owner = "22509456272" // METS TON NUMÉRO ICI avec 225
global.packname = "COIGNY"
global.author = "Team COIGNY - Bouaké CI"
global.sessionName = "session"
global.prefa = ['','!','.','#','&']
global.mess = {
    success: '✅ Fait!',
    admin: 'Commande réservée aux admins',
    botAdmin: 'COIGNY doit être admin',
    owner: 'Commande réservée au boss COIGNY',
    group: 'Commande pour groupe uniquement',
    private: 'Commande pour privé uniquement',
    wait: 'COIGNY traite...',
    error: 'Erreur, réessaie',
}

//======== OPTIMISATION CIDEA ========//
global.autoread = false // Économie batterie
global.autoreact = false
global.autotyping = false
global.autobio = false
global.autorecord = false

//======== API KEYS - Laisse vide si t’as pas ========//
global.api = {
    lol: '',
    rose: '',
}

let file = require.resolve(__filename)
fs.watchFile(file, () => {
    fs.unwatchFile(file)
    console.log(chalk.redBright(`Update ${__filename}`))
    delete require.cache[file]
    require(file)
})
