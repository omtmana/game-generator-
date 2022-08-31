import {useState, useEffect} from 'react'
// import './App.css';

function App() {
  const [users, setUsers]= useState([])
  
  useEffect(() => {
    const getUsers = async () => {
      let req = await fetch('http://localhost:3000/users')
      let res = await req.json()
      console.log('res', res)
      setUsers(res)
    }
    getUsers()
  }, [])
  console.log('user', users)

  return (
    <div className="App">
      <h2>Users</h2>
      {
        users.map((user) => {
          return (
            <div key={user.id}>
              <h4>{user.name}</h4>
            </div>
          )
        })
      }
    </div>
  )
}

export default App;
