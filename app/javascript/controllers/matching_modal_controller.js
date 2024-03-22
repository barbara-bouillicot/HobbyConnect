import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["image", "link", "checkbox", "icon", "name"];

  connect() {
    console.log("hey from the matching-modal controller");
  }

  copy(event) {
    console.log(event.currentTarget);
    const imageSrc = event.currentTarget.querySelector('img').getAttribute('src');
    console.log(imageSrc);
    this.imageTarget.src = imageSrc;
  }

  toggle() {
  let selectedCount = 0;

    this.checkboxTargets.forEach(checkbox => {
      if (checkbox.checked) {
        selectedCount++;
      }
    });

    console.log(selectedCount);

    const maxlimit = 1;

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
