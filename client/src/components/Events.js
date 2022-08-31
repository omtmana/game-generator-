
// import EventsCard from './EventsCard'

const Events = ({events}) => {
   return (
      <div>
         {
            events.map((gameEvents) => {
               return (
                  <div key={gameEvents.id}>
                     <h2>{gameEvents.name}</h2>
                  </div>
               )
               // <EventsCard key={gameEvents.id} gameEvents={gameEvents}/>
            })
         }
      </div>
   )
}

export default Events;