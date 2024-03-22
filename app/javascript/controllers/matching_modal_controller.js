import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["image", "link"];

  connect() {
    console.log("hey from the matching-modal controller");
  }

  copy(event) {
    console.log(event.currentTarget);
    const imageSrc = event.currentTarget.querySelector('img').getAttribute('src');
    console.log(imageSrc);
    this.imageTarget.src = imageSrc;
  }
}
