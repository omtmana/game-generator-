import React , {useState, useEffect} from "react";
import EventsCard from './EventsCard'

const Events = () => {
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

   return(
      <div>
         {
            events.map((gameEvents) => {
               return <EventsCard key={gameEvents.id} gameEvents={gameEvents}/>
            })
         }
      </div>
   )
}

export default Events;