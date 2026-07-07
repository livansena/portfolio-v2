import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [
    "modal",
    "submitButton"
  ]

  connect() {

    this.closeOnEscape = this.closeOnEscape.bind(this)

    document.addEventListener("keydown", this.closeOnEscape)

  }

  disconnect() {

    document.removeEventListener("keydown", this.closeOnEscape)

  }

  // ==========================================================
  // MODAL
  // ==========================================================

  open() {

    this.modalTarget.classList.add("active")

  }

  close() {

    this.modalTarget.classList.remove("active")

    this.resetButton()

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

  // ==========================================================
  // FORM
  // ==========================================================

  submit() {

    this.loading()

  }

  loading() {

    this.submitButtonTarget.disabled = true

    this.submitButtonTarget.value = "Sending..."

  }

  resetButton() {

    this.submitButtonTarget.disabled = false

    this.submitButtonTarget.value = "Send Message"

  }

}