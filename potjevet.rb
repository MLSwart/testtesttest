puts 'Hoeveel coupletten kun je aan?'
aantal = gets.chomp.to_i
aantal2 = aantal.to_i

while true
  aantal3 = ((aantal2 - aantal) + 1).to_s
  if aantal.to_i == 1
    aantal3 = 'laatst'
  end
  puts 'Dit is het ' + aantal3 + 'e couplet'
  puts 'Ik heb een potje met vet'
  puts 'al op de tafel gezet,'
  puts 'ik heb een potje, potje, potje vet'
  puts 'al op de tafel gezet.'
  aantal = (aantal.to_i) - 1
  if aantal.to_i <= 0
    break
  end
end
