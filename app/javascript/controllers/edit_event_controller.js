import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-event"
export default class extends Controller {
  static targets = ["infos", "form", "editButton"]
  isOpen = true

  connect() {
    this.defaultTitle = this.element.querySelector('.modal-title').textContent.trim()
    this.element.addEventListener('hidden.bs.modal', () => {
      this.infosTarget.classList.remove("d-none")
      this.formTarget.classList.add("d-none")
      this.editButtonTarget.textContent = "Edit"
      this.element.querySelector('.modal-title').textContent = this.defaultTitle
      this.isOpen = true
    })
  }

  displayForm() {
    if (this.isOpen) {
      this.infosTarget.classList.add("d-none")
      this.formTarget.classList.remove("d-none")
      this.editButtonTarget.textContent = "Details"
      this.element.querySelector('.modal-title').textContent = 'Edit Event'
    } else {
      this.infosTarget.classList.remove("d-none")
      this.formTarget.classList.add("d-none")
      this.editButtonTarget.textContent = "Edit"
      this.element.querySelector('.modal-title').textContent = this.defaultTitle
    }
    this.isOpen = !this.isOpen
  }

}
