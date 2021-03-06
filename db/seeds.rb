# Chessboard coords
CHARS = ('A'..'H').to_a
NUMS = (1..2).to_a

# Deleting old data
puts "Deleting players"
Player.delete_all
puts "players deleted"


puts "Deleting games"
Game.delete_all
puts "Games deleted"


puts "Deleting pieces"
Piece.delete_all
puts "Pieces deleted"

puts "Deleting users"
User.delete_all
puts "Users deleted"


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

8.times do |i|
  # White
  Piece.create!(
    {
      name: 'Pawn',
      start_position: i + 8,
      white: true
    }
  )
  # Black
  Piece.create!(
    {
      name: 'Pawn',
      start_position: i + 48,
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
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'King',
    start_position: 60,
    white: false
  }
)
puts "Creating queens"

# White
Piece.create!(
  {
    name: 'Queen',
    start_position: 3,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Queen',
    start_position: 59,
    white: false
  }
)

puts "Creating rooks"

# White
Piece.create!(
  {
    name: 'Rook',
    start_position: 0,
    white: true
  }
)
Piece.create!(
  {
    name: 'Rook',
    start_position: 7,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Rook',
    start_position: 56,
    white: false
  }
)
Piece.create!(
  {
    name: 'Rook',
    start_position: 63,
    white: false
  }
)

puts "Creating bishops"

# White
Piece.create!(
  {
    name: 'Bishop',
    start_position: 2,
    white: true
  }
)
Piece.create!(
  {
    name: 'Bishop',
    start_position: 5,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Bishop',
    start_position: 58,
    white: false
  }
)
Piece.create!(
  {
    name: 'Bishop',
    start_position: 61,
    white: false
  }
)

puts "Creating knights"

# White
Piece.create!(
  {
    name: 'Knight',
    start_position: 1,
    white: true
  }
)
Piece.create!(
  {
    name: 'Knight',
    start_position: 6,
    white: true
  }
)

# Black
Piece.create!(
  {
    name: 'Knight',
    start_position: 57,
    white: false
  }
)
Piece.create!(
  {
    name: 'Knight',
    start_position: 62,
    white: false
  }
)
