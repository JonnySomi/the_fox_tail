import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["month", "year", "monthp", "yearp","monthprice", "yearprice", "monthtime", "yeartime"];

  displayMonthTime() {
    this.monthtimeTarget.classList.remove("d-none")
    this.yeartimeTarget.classList.add("d-none")
    this.monthTarget.classList.add("d-none")
    this.yearTarget.classList.remove("d-none")
  }
  displayYearTime() {
    this.monthtimeTarget.classList.add("d-none")
    this.yeartimeTarget.classList.remove("d-none")
    this.monthTarget.classList.remove("d-none")
    this.yearTarget.classList.add("d-none")

  }

  displayMonthPrice() {
    this.monthpriceTarget.classList.remove("d-none")
    this.yearpriceTarget.classList.add("d-none")
    this.monthpTarget.classList.add("d-none")
    this.yearpTarget.classList.remove("d-none")
  }
  displayYearPrice() {
    this.monthpriceTarget.classList.add("d-none")
    this.yearpriceTarget.classList.remove("d-none")
    this.monthpTarget.classList.remove("d-none")
    this.yearpTarget.classList.add("d-none")
}
}
