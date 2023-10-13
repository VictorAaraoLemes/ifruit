const express = require('express');
const CheckListRouter = require('./src/routes/checklist');

const app = express();
app.use(express.json());

app.use('/checklist', CheckListRouter);

app.listen(3000, () => {
  console.log('Servidor foi iniciado');
});
