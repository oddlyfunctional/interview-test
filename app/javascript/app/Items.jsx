import React from 'react';
import Item from './Item';

const Items = ({ items }) => (
  <div className="items">
    {items.map(item => (
      <Item key={item.id} item={item} />
    ))}
  </div>
);

export default Items;
