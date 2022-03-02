import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["chessboard"];

  connect() {
    this.chessboardTarget.innerHTML = ""
    for (let i = 0; i < 32; i++) {
        this.chessboardTarget.innerHTML += `<div id=${i} class="box-black"></div>`
        this.chessboardTarget.innerHTML += `<div id=${i} class="box-white"></div>`;
    }
    console.log(this.chessboardTarget);
  }
}
