// app.js

const express = require('express');
const app = express();
const port = 3000;

// Rota principal que o script de teste vai acessar
app.get('/', (req, res) => {
  res.json({ message: "Servidor Node no ar!" });
});

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
