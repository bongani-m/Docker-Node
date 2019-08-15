const express = require('express'),
    app = express(),
    HOST = '0.0.0.0',
    PORT = 8080;

app.get('/', (req, res) => res.json({ message: 'Hell, World!' }));

app.listen(PORT, HOST)

console.log(`Running app on http://${HOST}:${PORT}`);