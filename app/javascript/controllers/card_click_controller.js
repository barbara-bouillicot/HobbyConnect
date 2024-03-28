import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  connect() {
    console.log("i am connected")
  }
  click(event) {
    event.stopPropagation()
  }
}
