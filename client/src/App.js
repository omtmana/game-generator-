import React , {useState, useEffect} from 'react'
import Home from './components/Home'
import About from './components/About'
import Events from './components/Events'
import Profile from './components/Profile'
import {BrowserRouter as Router, Routes, Route, Link} from 'react-router-dom'
import './App.css';

function App() {
  const [events, setEvents] = useState([])

  useEffect(() => {
    const getEvents = async () => {
      let req = await fetch('http://localhost:3000/events')
      let res = await req.json()
      setEvents(res)
    }
    getEvents()
  }, [])
  console.log('events', events)

  return (
    <div>
    <Router>
      <nav className='navigation-bar'>
        <Link to="/"> HOME </Link>
        <Link to="/about"> ABOUT </Link>
        <Link to="/events"> EVENTS </Link>
        <Link to="/profile"> PROFILE </Link>
      </nav>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
        <Route path="/events" element={<Events events={events} />} />
        <Route path="/profile" element={<Profile />} />
      </Routes>
    </Router>
    </div>
  );
}

export default App;
