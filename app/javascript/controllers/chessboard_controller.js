import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ["chessboard"];

   click(e) {
    // Select all pieces and selected piece if a selection has been made
    const pieces = document.querySelectorAll("i")
    let fromPiece = document.querySelector('.piece-selected')
    // Reset selected styling
    pieces.forEach(piece => {
      piece.classList.remove("piece-selected")
    })

    // If there was a selection of a piece and the target box isn't a piece
    if ( fromPiece && fromPiece.className.includes('piece') && !e.target.className.includes("piece")) {
      const pieceId = fromPiece.dataset.pieceId;
      const fromPosition = fromPiece.parentNode.id
      const toPosition = e.target.id
      const gameId = this.chessboardTarget.dataset.gameId

      const move = {
        piece_id: pieceId,
        game_id: gameId,
        from_position: fromPosition,
        to_position: toPosition,
        captured_id: null
      }

      e.target.innerHTML = fromPiece.outerHTML;
      fromPiece.parentNode.innerHTML = "";

      fetch(`${gameId}/moves`, {
        method: "POST",
        headers: {'Content-Type': "application/json", "X-CSRF-Token": csrfToken() },
        body: JSON.stringify({move: move})
      })
        .then(response => console.log(response))



      // TO-DO
      // AJAX call to create a move instance
      // WebSocket to update for realtime updates

    } else if (e.target.className.includes('piece')){ // If the selection was a piece
      e.target.classList.add("piece-selected");
      // TO-DO
      // Find available moves

      // Update view to indicate available boxes to select and which can be clickable
      // If move can capture opponent piece, indicate red hue
      // If simple move, indicate green hue

      //
    }
  }
}
