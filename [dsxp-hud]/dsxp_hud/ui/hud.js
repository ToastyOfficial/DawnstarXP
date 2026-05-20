var postal_text = document.getElementById("postalText")
var aop_text = document.getElementById("aopText")

var vehicle_hud = document.getElementById("vehicleInfo")
var compass_text = document.getElementById("compassText")
var speed_text = document.getElementById("speedText")
var speed_bar = document.getElementById("speedBar")
var fuel_text = document.getElementById("fuelText")
var fuel_bar = document.getElementById("fuelBar")
var location_text = document.getElementById("locationText")
var road_text = document.getElementById("roadText")

var clocked_hud = document.getElementById("clockedInfo")
var cops_text = document.getElementById("copsText")
var ems_text = document.getElementById("emsText")

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

window.addEventListener('message', (event) => {
    if (event.data.type === 'updateAOP') {

      aop_text.innerHTML = event.data.text
    }
});

window.addEventListener('message', (event) => {
    if (event.data.type === 'updatePostal') {

      postal_text.innerHTML = event.data.text
    }
});

window.addEventListener('message', (event) => {
    if (event.data.type === 'updateFuel') {

      fuel_text.innerHTML = event.data.amount
      fuel_bar.style.width = event.data.amount + '%'
    }
});


window.addEventListener('message', (event) => {
    if (event.data.type === 'updateVehInfo') {

      speed_bar.style.width = (Math.round(event.data.speed)/1.25) + '%'
      speed_text.innerHTML = Math.round(event.data.speed)
      compass_text.innerHTML = event.data.compass
      location_text.innerHTML = event.data.location
      road_text.innerHTML = event.data.road
    }
});

window.addEventListener('message', (event) => {
    if (event.data.type === 'showVehHud') {
      if (event.data.bool === true) {
        vehicle_hud.style.opacity = 100 + '%';
        if (screen.width > 2500) {
          vehicle_hud.style.height = 175 + 'px';
        } else {
          vehicle_hud.style.height = 150 + 'px';
        }
      }
      if (event.data.bool === false) {
        vehicle_hud.style.opacity = 0 + '%';
        vehicle_hud.style.height = 0 + 'px';
      }
    }
});

window.addEventListener('message', (event) => {
  if (event.data.type === 'updateCops') {

    cops_text.innerHTML = event.data.amount
    if (event.data.updating === false) {
      clocked_hud.style.opacity = 100 + '%'
      sleep(4000).then(() => {
        clocked_hud.style.opacity = 0 + '%';
      });
    }
  }
});

window.addEventListener('message', (event) => {
  if (event.data.type === 'updateEMS') {

    ems_text.innerHTML = event.data.amount
    if (event.data.updating === false) {
      clocked_hud.style.opacity = 100 + '%'
      sleep(4000).then(() => {
        clocked_hud.style.opacity = 0 + '%';
      });
    }
  }
});

window.addEventListener('message', (event) => {
  if (event.data.type === 'updateTow') {

    tow_text.innerHTML = event.data.amount
    if (event.data.updating === false) {
      clocked_hud.style.opacity = 100 + '%'
      sleep(4000).then(() => {
        clocked_hud.style.opacity = 0 + '%';
      });
    }
  }
});

window.addEventListener('message', (event) => {
    if (event.data.type === 'showCops') {
      clocked_hud.style.opacity = 100 + '%'
      sleep(4000).then(() => {
        clocked_hud.style.opacity = 0 + '%';
      });
    }
});
