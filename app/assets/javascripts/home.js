// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
        // put your options and callbacks here

        events: [
            {
                title: 'My Event',
                start: '2013-08-24',
                url: 'http://google.com/'
            }
            // other events here
        ],
        
        eventClick: function(event) {
            if (event.url) {
                window.open(event.url);
                return false;
            }
        },
        
        dayClick: function() {
            alert('a day has been clicked!');
        }
    });
});