const express = require('express');
const cors = require('cors');
const db = require('./db');
const app = express();
app.use(cors());
app.use(express.json());

// Routes
app.get('/products', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM products');
    res.json(rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
});

app.post('/products', async (req, res) => {
  const { name, price } = req.body;
  try {
    await db.execute('INSERT INTO products (name, price) VALUES (?, ?)', [name, price]);
    res.sendStatus(201);
  } catch (err) {
    res.status(500).send(err.message);
  }
});

// Start server
app.listen(5001, () => {
  console.log('Server running on port 5001');
});
