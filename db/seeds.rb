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

7.times do |i|
  # White
  Piece.create!(
    {
      name: 'Pawn',
      start_position: i + 8,
      captured: false,
      white: true
    }
  )
  # Black
  Piece.create!(
    {
      name: 'Pawn',
      start_position: i + 48,
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
    start_position: 4,
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'King',
    start_position: 60,
    captured: false,
    white: false
  }
)
puts "Creating queens"

# White
Piece.create!(
  {
    name: 'Queen',
    start_position: 3,
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Queen',
    start_position: 59,
    captured: false,
    white: false
  }
)

puts "Creating rooks"

# White
Piece.create!(
  {
    name: 'Rook',
    start_position: 0,
    captured: false,
    white: true
  }
)
Piece.create!(
  {
    name: 'Rook',
    start_position: 7,
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Rook',
    start_position: 56,
    captured: false,
    white: false
  }
)
Piece.create!(
  {
    name: 'Rook',
    start_position: 63,
    captured: false,
    white: false
  }
)

puts "Creating bishops"

# White
Piece.create!(
  {
    name: 'Bishop',
    start_position: 2,
    captured: false,
    white: true
  }
)
Piece.create!(
  {
    name: 'Bishop',
    start_position: 5,
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Bishop',
    start_position: 58,
    captured: false,
    white: false
  }
)
Piece.create!(
  {
    name: 'Bishop',
    start_position: 61,
    captured: false,
    white: false
  }
)

puts "Creating knights"

# White
Piece.create!(
  {
    name: 'Knight',
    start_position: 1,
    captured: false,
    white: true
  }
)
Piece.create!(
  {
    name: 'Knight',
    start_position: 6,
    captured: false,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Knight',
    start_position: 57,
    captured: false,
    white: false
  }
)
Piece.create!(
  {
    name: 'Knight',
    start_position: 62,
    captured: false,
    white: false
  }
)
