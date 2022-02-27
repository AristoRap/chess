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

# White
CHARS.each do |c|
  Piece.create!(
    {
      name: 'Pawn',
      start_position: "#{c}2",
      captured: false,
      white: true
    }
  )
end

# Black
CHARS.each do |c|
  Piece.create!(
    {
      name: 'Pawn',
      start_position: "#{c}7",
      captured: false,
      white: false
    }
  )
end
