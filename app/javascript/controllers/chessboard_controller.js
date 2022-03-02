import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["chessboard"];

  connect() {
    console.log("connected")
  }

  click(e) {
    const box = e.target.id ? e.target : e.target.parentNode;
    // Reset selected styling
    const pieces = document.querySelectorAll("i")
    pieces.forEach(piece => {
      piece.classList.remove("piece-selected")
    })

    if (box.className.includes("piece")) {
      e.target.classList.add("piece-selected");
    }
  }
}
