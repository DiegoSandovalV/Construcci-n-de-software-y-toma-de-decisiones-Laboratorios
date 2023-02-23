// Sirve para acceder al sisema de archivos de la computadora
const filesys = require('fs');

filesys.writeFileSync('notes.txt', 'This file was created by Node.js!');

// Create web server
const http = require('http');

const server = http.createServer((req, res) => {
    console.log(req.url);
    res.setHeader('Content-Type', 'text/html');
    res.write('aaaaaa');
    res.end();
});

server.listen(3000);