import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["star","el"]
  connect() {
    //this.element.textContent = "Hello World!"
    console.log("hi from hello_controller.js ")
    console.log(this.starTarget.classList.value)
    console.log(this.elTarget.dataset.id)
  }

  favourite(event) {
    if (this.starTarget.classList.value === "") {
      this.starTarget.classList.add("favourite-icon")
      console.log(this.starTarget.classList.value)
    } else {
      this.starTarget.classList.remove("favourite-icon")
      console.log("empty")
    }
  }

}
