import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {

  static targets = ["togglableElement"]

  flip() {
    console.log("Hello from toggle_controller.js");
    this.togglableElementTarget.classList.toggle("d-none");
    this.togglableElementTarget.classList.toggle("p-3");
    // this.togglableElementTarget.classList.toggle("slide");
  }
}
