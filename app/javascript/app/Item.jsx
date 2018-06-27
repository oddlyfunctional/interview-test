import React from 'react';

const Item = ({ item }) => (
  <div className="item">
    {item.id}
    {item.type}
    Quality: {item.quality}
    Days remaining: {item.daysRemaining}
  </div>
);

export default Item;
