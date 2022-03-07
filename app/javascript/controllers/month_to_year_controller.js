import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["month", "year","monthprice", "yearprice", "monthtime", "yeartime"];

  displayMonth() {
    this.yearpriceTarget.classList.add("d-none")
    this.yeartimeTarget.classList.add("d-none")
    this.monthpriceTarget.classList.remove("d-none")
    this.monthtimeTarget.classList.remove("d-none")
    this.monthTarget.classList.add("d-none")
    this.yearTarget.classList.remove("d-none")
  }
  displayYear() {
    this.monthpriceTarget.classList.add("d-none")
    this.monthtimeTarget.classList.add("d-none")
    this.yearpriceTarget.classList.remove("d-none")
    this.yeartimeTarget.classList.remove("d-none")
    this.yearTarget.classList.add("d-none")
    this.monthTarget.classList.remove("d-none")

  }
}
