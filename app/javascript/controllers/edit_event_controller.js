import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-event"
export default class extends Controller {
  static targets = ["infos", "form", "editButton", "labels"]

  connect() {
    this.defaultTitle = this.element.querySelector('.modal-title').textContent.trim()
    this.element.addEventListener('hidden.bs.modal', () => {
      this.infosTarget.classList.remove("d-none")
      this.formTarget.classList.add("d-none")
      //if (this.editButtonTarget) {
        //this.editButtonTarget.textContent = "Edit"
      //}
      this.element.querySelector('.modal-title').textContent = this.defaultTitle
    })
    this.isOpen = true
  }

  displayForm() {
    if (this.isOpen) {
      this.labelsTarget.classList.add("d-none")
      this.infosTarget.classList.add("d-none")
      this.formTarget.classList.remove("d-none")
      this.element.querySelector('.modal-title').textContent = 'Edit Event'
    } else {
      this.labelsTarget.classList.remove("d-none")
      this.infosTarget.classList.remove("d-none")
      this.formTarget.classList.add("d-none")
      this.element.querySelector('.modal-title').textContent = this.defaultTitle
    }
    this.isOpen = !this.isOpen
  }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.persisted) {
          window.location.reload();
        } else {
          this.element.innerHTML = data.modal
          this.isOpen = true
          this.displayForm()
        }
        //console.log(this.element)
      })
  }

}
