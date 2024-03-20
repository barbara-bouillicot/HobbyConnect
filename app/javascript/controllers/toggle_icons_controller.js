import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-icons"
export default class extends Controller {
  static targets = ["checkbox", "icon", "name"]

  connect() {
    console.log("hello from the toggle controller")
  }

  toggle() {
    console.log(this.checkboxTargets)
    this.iconTarget.classList.toggle("icons-selected");
    this.nameTarget.classList.toggle("icons-selected-name");

   }
  }
