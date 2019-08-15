const express = require('express'),
    path = require('path'),
    app = express(),
    HOST = '0.0.0.0',
    PORT = 8080;
    
app.use(express.static(path.resolve(__dirname, 'web', 'build')));

app.get('/api/v1', (req, res) => res.json({ message: 'Hell, World!' }));

app.get('*', (req, res) => {
    res.sendFile(path.resolve(__dirname, '..', 'build', 'index.html'));
  });
  

app.listen(PORT, HOST)

console.log(`Running app on http://${HOST}:${PORT}`);