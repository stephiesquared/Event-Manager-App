// Initialize and add the map
function initMap() {
    // The location of Colorado Springs
    const cosprings = { lat: 38.87892, lng: -104.76809 };
    // The map, centered at Colorado Springs
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 8,
        center: cosprings,
    });
    
    // place markers for each event listed
    const events = document.querySelectorAll(".coordinate-hidden");
    events.forEach(event => {
       const marker = new google.maps.Marker({
           position: {
               lat: parseFloat(event.childNodes.item(1).childNodes.item(0).data),
               lng: parseFloat(event.childNodes.item(3).childNodes.item(0).data)
           },
           map: map
       });
   })

    // place markers for user
    const user = document.querySelectorAll(".user-coordinate-hidden");
    const userMarker = new google.maps.Marker({
        icon: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png",
        position: {
            lat: parseFloat(user[0].childNodes.item(1).childNodes.item(0).data),
            lng: parseFloat(user[0].childNodes.item(3).childNodes.item(0).data)
        },
        map: map
    });
}

window.initMap = initMap
      
