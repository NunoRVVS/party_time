import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {

  static targets = ["togglableElement", "toggableButton"]

  connect() {
    console.log(window.location.pathname)
    if(window.location.pathname == "/party_items"){
      this.toggableButtonTarget.classList.toggle("d-none");
    }
  }

  flip() {
    console.log("Hello from toggle_controller.js");
    this.togglableElementTarget.classList.toggle("d-none");
    this.togglableElementTarget.classList.toggle("p-3");
    // this.togglableElementTarget.classList.toggle("slide");
  }
}
