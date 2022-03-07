import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["month", "year"];

  displayMonth() {
    this.monthTarget.classList.add("d-none")
    this.yearTarget.classList.remove("d-none")
}
}
