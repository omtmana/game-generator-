import React from 'react'
import Home from './components/Home'
import About from './components/About'
import Events from './components/Events'
import Profile from './components/Profile'
import {BrowserRouter as Router, Routes, Route, Link} from 'react-router-dom'
import './App.css';

function App() {
  return (
    <div>
    <Router>
      <nav>
        <Link to="/"> HOME </Link>
        <Link to="/about"> ABOUT </Link>
        <Link to="/events"> EVENTS </Link>
        <Link to="/profile"> PROFILE </Link>
      </nav>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
        <Route path="/events" element={<Events />} />
        <Route path="/profile" element={<Profile />} />
      </Routes>
    </Router>
    </div>
  );
}

export default App;
