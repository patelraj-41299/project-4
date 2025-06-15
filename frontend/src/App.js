import React, { useState, useEffect } from 'react';
import ProductList from './components/ProductList';
import AddProduct from './components/AddProduct';

function App() {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch('http://localhost:5001/products')
      .then(res => res.json())
      .then(data => setProducts(data));
  }, []);

  const addProduct = (product) => {
    setProducts([...products, product]);
  };

  return (
    <div>
      <h1>E-Commerce WebApp</h1>
      <AddProduct onAdd={addProduct} />
      <ProductList products={products} />
    </div>
  );
}

export default App;
