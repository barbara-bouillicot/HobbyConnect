import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="card-click"
export default class extends Controller {
  connect() {
    console.log("i am connected")
  }
  click(event) {
    event.stopPropagation()
  }
}
