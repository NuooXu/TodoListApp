import React from 'react';
import { Link } from 'react-router-dom';

function Header() {
  return (
    <header style={headerStyle}>
      <h1>Tasks Form</h1>
      <Link style={linkStyle} to="/">Main</Link> | <Link style={linkStyle} to="/about">About Us</Link>
    </header>
  )
}

const headerStyle = {
  background: "gray",
  color: "#fff",
  textAlign: "center",
  padding: "10px",
  opacity: 0.5
}

const linkStyle = {
  color: '#fff',
  textDecoration: 'none'
}

export default Header;