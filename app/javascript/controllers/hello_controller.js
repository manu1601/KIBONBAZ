import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["star"]
  connect() {
    //this.element.textContent = "Hello World!"
    console.log("hi from hello_controller.js ")
    // console.log(this.element)
    // console.log(this.starTarget)
  }
  favourite(event) {
    // console.dir(this.starTarget)
    console.log(this.starTarget.classList)
    this.starTarget.classList.remove("unfavourite-icon")
    this.starTarget.classList.add("favourite-icon")

  }
}
