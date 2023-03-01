import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="icon"
export default class extends Controller {
  static targets = ["write", "read"]
  connect() {
    console.log("hello from icon controller")
    console.log(this.element)
    console.log(this.writeTarget)
    console.log(this.readTarget)
  }

  write(event) {
    console.log(event)
    this.writeTarget.classList.add("d-none")
    this.readTarget.classList.remove("d-none")
  }

  read (event) {
    console.log(event)
    this.readTarget.classList.add("d-none")
    this.writeTarget.classList.remove("d-none")
  }
}
