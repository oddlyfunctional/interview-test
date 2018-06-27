import React from 'react';

const Navbar = ({ daysElapsed }) => (
  <nav className="navbar">
    <h1 className="logo">Stock</h1>

    <span className="days-elapsed">Days elapsed: {daysElapsed}</span>
  </nav>
);

export default Navbar;
