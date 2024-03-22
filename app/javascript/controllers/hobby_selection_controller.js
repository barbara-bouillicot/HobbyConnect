import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="hobby-selection"
export default class extends Controller {
  static targets = ["checkbox", "icon", "name"];

  connect() {
    console.log("hey");
  }

  select() {
    let selectedCount = 0;

    this.checkboxTargets.forEach(checkbox => {
      if (checkbox.checked) {
        selectedCount++;
      }
    });

    console.log(selectedCount);

    const maxlimit = 6;


    if (selectedCount >= maxlimit) {
      this.checkboxTargets.forEach(checkbox => {
        if (!checkbox.checked) {
          checkbox.disabled = true;
        }
      });
    } else {
      this.checkboxTargets.forEach(checkbox => {
        checkbox.disabled = false;
      });
    }


    this.checkboxTargets.forEach((checkbox, index) => {
      const icon = this.iconTargets[index];
      const name = this.nameTargets[index];
      if (checkbox.checked) {
        icon.classList.add("icons-selected");
        name.classList.add("icons-selected-name");
      } else {
        icon.classList.remove("icons-selected");
        name.classList.remove("icons-selected-name");
      }
    });
  }
}
