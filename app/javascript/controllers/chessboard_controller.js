import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["chessboard"];

  connect() {
    console.log("connected")
  }

  click(e) {
    const toBox = e.target.id ? e.target.childNodes[0] : e.target;
    // Reset selected styling
    const pieces = document.querySelectorAll("i")
    let fromPiece = document.querySelector('.piece-selected')
    pieces.forEach(piece => {
      piece.classList.remove("piece-selected")
    })

    console.log(fromPiece);
    if ( fromPiece && fromPiece.className.includes('piece') && !e.target.className.includes("piece")) {
      e.target.innerHTML = fromPiece.outerHTML;
      fromPiece.parentNode.innerHTML = "";
    } else if (e.target.className.includes('piece')){
      e.target.classList.add("piece-selected");
    }
  }
}
