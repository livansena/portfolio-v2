import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["modal"]

  connect() {

    this.closeOnEscape = this.closeOnEscape.bind(this)

    document.addEventListener("keydown", this.closeOnEscape)

  }

  disconnect() {

    document.removeEventListener("keydown", this.closeOnEscape)

  }

  open() {

    this.modalTarget.classList.add("active")

  }

  close() {

    this.modalTarget.classList.remove("active")

  }

  closeBackground(event) {

    if (event.target === this.modalTarget) {

      this.close()

    }

  }

  closeOnEscape(event) {

    if (event.key === "Escape") {

      this.close()

    }

  }

}