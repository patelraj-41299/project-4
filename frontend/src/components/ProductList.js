import React from 'react';

function ProductList({ products }) {
  return (
    <div>
      <h2>Products</h2>
      <ul>
        {products.map((product, idx) => (
          <li key={idx}>{product.name} - ${product.price}</li>
        ))}
      </ul>
    </div>
  );
}

export default ProductList;
