import React from "react"
import { Link } from "react-router-dom"
function Header() {
  return (
    <div>
      <header style={headerStyle}>
        <h1>TodoList</h1>
        {/* <Link style={linkStyle} to="/">
          Home
        </Link>{" "}
        |
        <Link style={linkStyle} to="/about">
          About
        </Link> */}
      </header>
    </div>
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
  color: "#fff",
  decoration: "none"
}

export default Header
