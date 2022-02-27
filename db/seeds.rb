# Chessboard coords
CHARS = ('A'..'H').to_a
NUMS = (1..2).to_a

# Deleting old data

puts "Deleting users"
User.delete_all
puts "Users deleted"

puts "Deleting pieces"
Piece.delete_all
puts "Pieces deleted"

# Creating data

# Creating users
puts "Creating user 1"
User.create!(
  {
    email: 'dev_1@test.com',
    password: '123456'
  }
)

puts "Creating user 2"
User.create!(
  {
    email: 'dev_2@test.com',
    password: '123456'
  }
)

# Creating pieces
puts "Creating pawns"

CHARS.each do |c|
  # White
  Piece.create!(
    {
      name: 'Pawn',
      start_position: "#{c}2",
      captured: false,
      white: true
    }
  )
  # Black
  Piece.create!(
    {
      name: 'Pawn',
      start_position: "#{c}7",
      captured: false,
      white: false
    }
  )
end

puts "Creating kings"

# White
Piece.create!(
  {
    name: 'King',
    start_position: "D1",
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'King',
    start_position: "D8",
    captured: false,
    white: false
  }
)
puts "Creating queens"

# White
Piece.create!(
  {
    name: 'Queen',
    start_position: "E1",
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Queen',
    start_position: "E8",
    captured: false,
    white: false
  }
)

puts "Creating rooks"

# White
Piece.create!(
  {
    name: 'Rook',
    start_position: "A1",
    captured: false,
    white: true
  }
)
Piece.create!(
  {
    name: 'Rook',
    start_position: "H1",
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Rook',
    start_position: "A8",
    captured: false,
    white: false
  }
)
Piece.create!(
  {
    name: 'Rook',
    start_position: "H8",
    captured: false,
    white: false
  }
)

puts "Creating bishops"

# White
Piece.create!(
  {
    name: 'Bishop',
    start_position: "C1",
    captured: false,
    white: true
  }
)
Piece.create!(
  {
    name: 'Bishop',
    start_position: "F1",
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Bishop',
    start_position: "C8",
    captured: false,
    white: false
  }
)
Piece.create!(
  {
    name: 'Bishop',
    start_position: "F8",
    captured: false,
    white: false
  }
)

puts "Creating knights"

# White
Piece.create!(
  {
    name: 'Knight',
    start_position: "D1",
    captured: false,
    white: true
  }
)
Piece.create!(
  {
    name: 'Knight',
    start_position: "G1",
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Knight',
    start_position: "D8",
    captured: false,
    white: false
  }
)
Piece.create!(
  {
    name: 'Knight',
    start_position: "G8",
    captured: false,
    white: false
  }
)
