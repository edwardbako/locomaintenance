import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["icon", "input"]

  toggle(e) {
    e.preventDefault();

    if (this.inputTarget.type === "password") {
      this.inputTarget.type = "text"
    } else {
      this.inputTarget.type = "password"
    }

    $(this.iconTarget).toggleClass("bi-eye bi-eye-slash")
  }
}