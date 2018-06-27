import React from 'react';

const Ticker = ({ onTick }) => (
  <button className="ticker" onClick={onTick}>
    <i className="far fa-clock"></i>
  </button>
);

export default Ticker;
