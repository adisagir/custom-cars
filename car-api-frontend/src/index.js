document.addEventListener("DOMContentLoaded", () => {
  const userURL = "http://localhost:3000/users"
  const makeURL = "http://localhost:3000/makes"
  const modelURL = "http://localhost:3000/models"
  const bmwColorsURL = "http://localhost:3000/bmw_colors"
  const bmwWheelsURL = "http://localhost:3000/bmw_wheels"
  const audiColorsURL = "http://localhost:3000/audi_colors"
  const mercedesColorsURL = "http://localhost:3000/mercedes_colors"

  const bmwVehicleURL = "https://cache.bmwusa.com/cosy.arox?pov=walkaround&brand=WBBM&vehicle="
  const bmwPaintURL = "&client=byo&paint="
  const bmwFabricURL = "&fabric="
  const bmwSaURL = "&sa="
  const bmwAngleURL = "&quality=70&bkgnd=transparent&RESP=PNG&angle="

  const mercedesVehicleURL = "https://mediaserver.mbusa.com/iris/iris?client=mb&brand=mbusa&resp=err_status%2Cjpeg&quality=90&vehicle="
  const mercedesPovURL = "&pov=e"
  const mercedesPaintURL = "%2Crt&paint=2_"
  const mercedesSaURL = "&sa="
  const mercedesSizeURL = "&width=1330&height=570&w=6647&h=3998&x=1889&y=3200"

  const body = document.querySelector("body")
  const getAllButton = document.querySelector("#all-users")
  const welcomeDiv = document.getElementById("#welcome")
  const welcomeForm = document.querySelector(".welcome")

  let username;
  let imageLink = "";
  let vehicleNickname = "";

  const fetchColors = (url, model, paintDiv) => {
    fetch(url)
      .then(resp => resp.json())
      .then(colors => {
        let modelColor = colors.data.filter(color => color.relationships.model.data.id === model.data.id)
        modelColor.forEach(individualColor => {
          let makePaintP = document.createElement("p")
          // makePaintP.innerText = individualColor.attributes.name
          makePaintP.innerHTML += `<img title="${individualColor.attributes.name}" src="${individualColor.attributes.color_link}" width=50 height=50>`
          makePaintP.setAttribute("data-paint-code", individualColor.attributes.color_code)
          makePaintP.firstElementChild.setAttribute("data-paint-code", individualColor.attributes.color_code)
          paintDiv.append(makePaintP)
        })
      })
  }
  const fetchWheels = (url, model, wheelsDiv) => {
    fetch(url)
      .then(resp => resp.json())
      .then(wheels => {
        let modelWheel = wheels.data.filter(wheel => wheel.relationships.model.data.id === model.data.id)
        modelWheel.forEach(individualWheel => {
          let makeWheelP = document.createElement("p")
          // makePaintP.innerText = individualWheel.attributes.name
          makeWheelP.innerHTML += `<img title="${individualWheel.attributes.wheel_name}" src="${individualWheel.attributes.wheel_link}" width=50 height=50>`
          makeWheelP.setAttribute("data-wheel-code", individualWheel.attributes.wheel_code)
          makeWheelP.firstElementChild.setAttribute("data-wheel-code", individualWheel.attributes.wheel_code)
          wheelsDiv.append(makeWheelP)
        })
      })
  }

  const vehicleDisplay = (imageSource, model) => {
    body.innerHTML = `
    <h1>${model.data.attributes.name}</h1>
    <h3>MSRP: $${model.data.attributes.msrp}</h3>
    <div class="car-container "> 
    <img class="car-image" src=${imageSource}>
    <img class="left-arrow" width=50 height=50 src="https://i.imgur.com/tusK8U5.png">
    <img class="right-arrow" width=50 height=50 src="https://i.imgur.com/tusK8U5.png">
    </div>
    <div class="paint"></div>
    <div class="wheels"></div>
    <br>
    <h4> Style: ${model.data.attributes.style} </h4>
    <h4> Specs: ${model.data.attributes.specs} </h4>
    <h4> Engine: ${model.data.attributes.engine} </h4>
    <h4> Transmission: ${model.data.attributes.transmission} </h4>
    <h4> Drivetrain: ${model.data.attributes.drivetrain} </h4>
    <button type="button" id="add-to-garage">Add to Garage</button>
    `
  }

  getAllButton.addEventListener("click", (e) => {
    fetch(userURL)
      .then(resp => resp.json())
      .then(users => {
        users.data.forEach(user => {
          let userGarage = document.createElement("div")
          userGarage.innerHTML += `
          <p>${user.attributes.name}</p>
          <img src=${user.attributes.image_link}>
        `
          body.append(userGarage)
        })
      })
  })

  welcomeForm.addEventListener("submit", (e) => {
    e.preventDefault()

    username = e.target.querySelector("#username").value

    let currentUser;

    fetch(userURL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: JSON.stringify({
        name: username,
        image_link: imageLink,
        vehicle_nickname: vehicleNickname
      })
    })
      .then(resp => resp.json())
      .then(user => {
        currentUser = user.data
      })
      .catch(err => {
        alert(err)
      })

    body.innerHTML = ""

    let logoDiv = document.createElement("div")
    logoDiv.setAttribute("id", "logo")
    logoDiv.innerHTML = `
      <h1>Choose a Make</h1>
      <img src="https://www.carlogos.org/logo/BMW-logo-2000-2048x2048.png" width=200 height=200 data-id="2">
      <img src="https://www.carlogos.org/logo/Mercedes-Benz-logo-2011-1920x1080.png" width=350 height=200 data-id="3">
    `
    body.append(logoDiv)

    let modelObjects;
    fetch(modelURL)
      .then(resp => resp.json())
      .then(models => {
        modelObjects = models.data
      })

    logoDiv.addEventListener("click", (e) => {

      if (e.target.tagName === "IMG") {
        let makeId = e.target.dataset.id

        fetch(`${makeURL}/${makeId}`)
          .then(resp => resp.json())
          .then(make => {
            body.innerHTML = ""
            let modelSelectorDiv = document.createElement("div")
            modelSelectorDiv.setAttribute("id", make.data.attributes.name)
            modelSelectorDiv.innerHTML = `
            <h1>Build your ${make.data.attributes.name}</h1>
            <h2>Models:</h2>
            <ul data-id="models"> </ul>
            `
            let modelsUl = modelSelectorDiv.querySelector(`ul[data-id="models"]`)
            let modelId;
            modelObjects.forEach(modelObject => {
              modelId = modelObject.relationships.make.data.id
              if (modelId === make.data.id) {
                let makeLi = document.createElement("li")
                makeLi.setAttribute("data-id", modelObject.id)
                makeLi.setAttribute("class", modelId)
                makeLi.innerText = modelObject.attributes.name
                modelsUl.append(makeLi)
              }
            })
            body.append(modelSelectorDiv)

            modelsUl.addEventListener("click", (e) => {
              if (e.target.tagName === "LI") {
                modelId;
                if (e.target.className !== modelId) {
                  body.innerHTML = ""
                  fetch(`${modelURL}/${e.target.dataset.id}`)
                    .then(resp => resp.json())
                    .then(model => {
                      let selectAColor = "P0300"
                      let angleOfCar = "270"
                      let defaultWheel = "S022B"
                      let vehicleImageSource;

                      if(model.data.attributes.vehicle_id !== "195R"){
                        vehicleImageSource = `${bmwVehicleURL}${model.data.attributes.vehicle_id}${bmwPaintURL}${selectAColor}${bmwFabricURL}${model.data.attributes.fabric_id}${bmwSaURL}${defaultWheel}${model.data.attributes.sa_id}${bmwAngleURL}${angleOfCar}`
                      } else if(model.data.attributes.vehicle_id === "195R"){
                        vehicleImageSource = `${bmwVehicleURL}${model.data.attributes.vehicle_id}${bmwPaintURL}${selectAColor}${bmwFabricURL}${model.data.attributes.fabric_id}${bmwSaURL}${model.data.attributes.sa_id}${bmwAngleURL}${angleOfCar}`
                      }
                      // debugger
                      vehicleDisplay(vehicleImageSource, model, angleOfCar, selectAColor)

                      let paintDiv = body.querySelector(".paint")
                      let wheelsDiv = body.querySelector(".wheels")
                      let modelImg = document.querySelector("img")
                      let carContainer = document.querySelector(".car-container")

                      carContainer.addEventListener("click", (e) => {
                        if (e.target.className === "right-arrow") {
                          let newAngle = parseInt(angleOfCar) - 45
                          angleOfCar = newAngle.toString()
                          modelImg.setAttribute("src", `${bmwVehicleURL}${model.data.attributes.vehicle_id}${bmwPaintURL}${selectAColor}${bmwFabricURL}${model.data.attributes.fabric_id}${bmwSaURL}${defaultWheel}${model.data.attributes.sa_id}${bmwAngleURL}${angleOfCar}`)
                        } else if (e.target.className === "left-arrow") {
                          let newAngle = parseInt(angleOfCar) + 45
                          angleOfCar = newAngle.toString()
                          modelImg.setAttribute("src", `${bmwVehicleURL}${model.data.attributes.vehicle_id}${bmwPaintURL}${selectAColor}${bmwFabricURL}${model.data.attributes.fabric_id}${bmwSaURL}${defaultWheel}${model.data.attributes.sa_id}${bmwAngleURL}${angleOfCar}`)
                        }
                      })

                      fetchColors(bmwColorsURL, model, paintDiv)
                      fetchWheels(bmwWheelsURL, model, wheelsDiv)

                      paintDiv.addEventListener("click", (e) => {
                        if (e.target.tagName === "IMG") {
                          selectAColor = e.target.dataset.paintCode
                          modelImg.setAttribute("src", `${bmwVehicleURL}${model.data.attributes.vehicle_id}${bmwPaintURL}${selectAColor}${bmwFabricURL}${model.data.attributes.fabric_id}${bmwSaURL}${model.data.attributes.sa_id}${bmwAngleURL}${angleOfCar}`)
                        }
                      })

                      wheelsDiv.addEventListener("click", (e) => {
                        if (e.target.tagName === "IMG") {
                          defaultWheel = e.target.dataset.wheelCode
                          modelImg.setAttribute("src", `${bmwVehicleURL}${model.data.attributes.vehicle_id}${bmwPaintURL}${selectAColor}${bmwFabricURL}${model.data.attributes.fabric_id}${bmwSaURL}${defaultWheel}${model.data.attributes.sa_id}${bmwAngleURL}${angleOfCar}`)
                        }
                      })

                      let buttonTag = document.querySelector("#add-to-garage")
                      buttonTag.addEventListener("click", (e) => {
                        body.innerHTML = ""
                        body.innerHTML += `
                        <h1> Welcome To Your Garage, ${currentUser.attributes.name.slice(0, 1).toUpperCase() + currentUser.attributes.name.slice(1).toLowerCase()}! </h1>
                        `
                        body.append(modelImg)
                        body.innerHTML += `
                          <h3 class="nickname" >${model.data.attributes.name}</h3>
                          <h3 class="set-nickname"></h3>
                          <form id="nickname">
                            <input type="text" name="nickname" id="new-nickname" placeholder="Enter Nickname">
                            <input type="submit" value="Set Nickname" name="submit">
                          </form>
                          `

                        let imageLink = modelImg.src
                        fetch(`${userURL}/${currentUser.id}`, {
                          method: "PATCH",
                          headers: {
                            "Content-Type": "application/json",
                            "Accept": "application/json"
                          },
                          body: JSON.stringify({
                            image_link: imageLink
                          })
                        })
                          .then(resp => resp.json())
                          .then(details => {
                            userDetail = details
                          })

                        let nickname = body.querySelector(`h3[class="nickname"]`)
                        let setNickname = body.querySelector(`h3[class="set-nickname"]`)
                        let newNicknameForm = body.querySelector("#nickname")
                        newNicknameForm.addEventListener("submit", (e) => {
                          e.preventDefault()
                          let newNickname = body.querySelector("#new-nickname").value
                          fetch(`${userURL}/${currentUser.id}`, {
                            method: "PATCH",
                            headers: {
                              "Content-Type": "application/json",
                              "Accept": "application/json"
                            },
                            body: JSON.stringify({
                              vehicle_nickname: newNickname
                            })
                          })
                            .then(resp => resp.json())
                            .then(details => {

                              userDetail = details
                              setNickname.innerText = (`Nickname: "${details.data.attributes.vehicle_nickname}"`)
                              newNicknameForm.reset()
                            })
                        })

                      })
                    })

                } else {
                  body.innerHTML = ""
                  fetch(`${modelURL}/${e.target.dataset.id}`)
                    .then(resp => resp.json())
                    .then(model => {
                      let selectAColor = "775"
                      let povOfCar = "01"
                      let vehicleImageSource = `${mercedesVehicleURL}${model.data.attributes.vehicle_id}${mercedesPovURL}${povOfCar}${mercedesPaintURL}${selectAColor}${mercedesSaURL}${model.data.attributes.sa_id}${mercedesSizeURL}`

                      vehicleDisplay(vehicleImageSource, model)

                      let paintDiv = body.querySelector(".paint")
                      let modelImg = document.querySelector("img")
                      let carContainer = document.querySelector(".car-container")

                      carContainer.addEventListener("click", (e) => {
                        let newPov;
                        if (e.target.className === "right-arrow") {
                          newPov = parseInt(povOfCar) + 5
                          newPov < 10 && newPov < 32? (newPov = "0" + newPov) : newPov
                          newPov > 32 ? (newPov = "01"): newPov
                          povOfCar = newPov
                          modelImg.setAttribute("src", `${mercedesVehicleURL}${model.data.attributes.vehicle_id}${mercedesPovURL}${povOfCar}${mercedesPaintURL}${selectAColor}${mercedesSaURL}${model.data.attributes.sa_id}${mercedesSizeURL}`)
                        } else if (e.target.className === "left-arrow") {
                          newPov = parseInt(povOfCar) - 5
                          newPov < 10 && newPov > 0 ? (newPov = "0" + newPov) : newPov
                          newPov < 0 ? (newPov = "32"): newPov
                          povOfCar = newPov
                          debugger
                          modelImg.setAttribute("src", `${mercedesVehicleURL}${model.data.attributes.vehicle_id}${mercedesPovURL}${povOfCar}${mercedesPaintURL}${selectAColor}${mercedesSaURL}${model.data.attributes.sa_id}${mercedesSizeURL}`)
                        }
                      })

                      fetchColors(mercedesColorsURL, model, paintDiv)

                      paintDiv.addEventListener("click", (e) => {
                        if (e.target.tagName === "IMG") {
                          selectAColor = e.target.dataset.paintCode
                          modelImg.setAttribute("src", `${mercedesVehicleURL}${model.data.attributes.vehicle_id}${mercedesPovURL}${povOfCar}${mercedesPaintURL}${selectAColor}${mercedesSaURL}${model.data.attributes.sa_id}${mercedesSizeURL}`)
                        }
                      })
                      let buttonTag = document.querySelector("#add-to-garage")
                      buttonTag.addEventListener("click", (e) => {
                        body.innerHTML = ""
                        body.innerHTML += `
                        <h1> Welcome To Your Garage, ${currentUser.attributes.name.slice(0, 1).toUpperCase() + currentUser.attributes.name.slice(1).toLowerCase()}! </h1>
                        `
                        body.append(modelImg)
                        body.innerHTML += `
                          <h3 class="nickname" >${model.data.attributes.name}</h3>
                          <h3 class="set-nickname"></h3>
                          <form id="nickname">
                            <input type="text" name="nickname" id="new-nickname" placeholder="Enter Nickname">
                            <input type="submit" value="Set Nickname" name="submit">
                          </form>
                          `

                        let imageLink = modelImg.src
                        fetch(`${userURL}/${currentUser.id}`, {
                          method: "PATCH",
                          headers: {
                            "Content-Type": "application/json",
                            "Accept": "application/json"
                          },
                          body: JSON.stringify({
                            image_link: imageLink
                          })
                        })
                          .then(resp => resp.json())
                          .then(details => {
                            userDetail = details
                          })

                        let nickname = body.querySelector(`h3[class="nickname"]`)
                        let setNickname = body.querySelector(`h3[class="set-nickname"]`)
                        let newNicknameForm = body.querySelector("#nickname")
                        newNicknameForm.addEventListener("submit", (e) => {
                          e.preventDefault()
                          let newNickname = body.querySelector("#new-nickname").value
                          fetch(`${userURL}/${currentUser.id}`, {
                            method: "PATCH",
                            headers: {
                              "Content-Type": "application/json",
                              "Accept": "application/json"
                            },
                            body: JSON.stringify({
                              vehicle_nickname: newNickname
                            })
                          })
                            .then(resp => resp.json())
                            .then(details => {
                              userDetail = details
                              setNickname.innerText = (`Nickname: "${details.data.attributes.vehicle_nickname}"`)
                              newNicknameForm.reset()
                            })
                        })

                      })
                    })
                }
              }
            })
          })
      }
    })

  })
})