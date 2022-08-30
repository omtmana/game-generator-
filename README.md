# Models
- Users
- Events
- Locations

## Users
<<<<<<< HEAD
 - Name
 - bio
 - username
 - password
 - email
 - availibility 
 - user_location
 - games_preference
 - skill_level
 - events
=======
Name
bio
username
password
email
availibility 
user_location
games_preference
skill_level
>>>>>>> olivia

##  Events
 - name
 - location_id:integer
 - time:datetime
 - user_id:integer
 - game_name

## Location
 - location_name
 - time_slots
 - location_type
 - address

# Controllers
 - Events
   
 - Users
 - Locations

# Model Methods

## User
- User.events => [all events]
- User.available_for => [list upcoming events that occur when user is available]
- User.upcoming => [all events that have not occured yet]
- User.history => [list of events that have occured]
- User.next => next event in User's calendar
- User.info => {user profile}
- User.create_event => makes new event
- User.edit_event => modifies an event that the user previously made
- User.cancel_event => deletes upcoming event that the user previously made

## Event
 - Event.info => {event information}
 - Event.attendees => [list of all users attending event]
 - Event.new_host => transfers ownership of an event to another user

## Location
 - Location.events => [list of events at a location]
 - Location.upcoming => [list of events happening in the next week at a location]
 - Location.available? => returns true/false for a given timeslot


 # Views
  - ReactJS
