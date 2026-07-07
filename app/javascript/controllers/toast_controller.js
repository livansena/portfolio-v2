import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static values = {
    delay: Number
  }

  connect() {

    this.timeout = setTimeout(() => {

      this.close()

    }, this.delayValue || 5000)

  }

  disconnect() {

    clearTimeout(this.timeout)

  }

  close() {

    this.element.style.opacity = "0"

    this.element.style.transform = "translateY(-20px)"

    setTimeout(() => {

      this.element.remove()

    }, 300)

  }

}