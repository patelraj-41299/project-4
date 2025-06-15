import React, { useState } from 'react';

function AddProduct({ onAdd }) {
  const [name, setName] = useState('');
  const [price, setPrice] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    const product = { name, price };
    await fetch('http://localhost:5001/products', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(product)
    });
    onAdd(product);
    setName('');
    setPrice('');
  };

  return (
    <form onSubmit={handleSubmit}>
      <input 
        type="text" 
        value={name} 
        placeholder="Product Name" 
        onChange={e => setName(e.target.value)} 
        required 
      />
      <input 
        type="number" 
        value={price} 
        placeholder="Product Price" 
        onChange={e => setPrice(e.target.value)} 
        required 
      />
      <button type="submit">Add Product</button>
    </form>
  );
}

export default AddProduct;
