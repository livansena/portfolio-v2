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
  // SUBMIT
  // ==========================================================

  submitStart() {

  this.submitButtonTarget.disabled = true
  this.submitButtonTarget.value = "Sending..."

}
  
  submitEnd(event) {

  const { success } = event.detail

  this.submitButtonTarget.disabled = false
  this.submitButtonTarget.value = "Send Message"

  if (success) {

    event.target.reset()

    this.close()

    }

  }

  // ==========================================================
  // TOAST
  // ==========================================================

  showToast(message, type) {

    const toast = document.createElement("div")

    toast.className = `toast toast-${type}`

    toast.innerHTML = `
      <div class="toast-content">
        <strong>${type === "success" ? "Success" : "Error"}</strong>
        <p>${message}</p>
      </div>
    `

    document.body.appendChild(toast)

    setTimeout(() => {
      toast.remove()
    }, 5000)

  }

}