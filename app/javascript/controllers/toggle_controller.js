import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {

  static targets = ["togglableElement"]

  flip() {
    console.log("Hello from toggle_controller.js");
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
