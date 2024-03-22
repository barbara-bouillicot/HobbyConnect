import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-event"
export default class extends Controller {
  static targets = ["form", "input"]

  connect() {
  }

  create(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.element.innerHTML = data
        //console.log(this.element)
      })
  }


}
