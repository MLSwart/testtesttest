puts 'Welcome to the interactive digital fortune teller.'
puts 'What\'s the year of your birth?'
year = gets.chomp
age = (2015 - (year.to_i))
while age > 130 || age < 1
  puts 'Oops, that can\'t be right...'
  puts 'What\'s the year of your birth?'
  year = gets.chomp
  age = (2015 - (year.to_i))
  # Yay! It works!
end
puts 'What month were you born in? (January = 1, February = 2, etc)'
month = gets.chomp
monthnum = (month.to_i) - 1
while monthnum > 11 || monthnum < 0
  puts 'Oops... please tell me the number of the month you were born in. (January = 1, February = 2, etc)'
  month = gets.chomp
  monthnum = (month.to_i) - 1
  # Works too!
end
monthname = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
puts 'And on which day of ' + monthname[monthnum] + ' were you born?'
day = gets.chomp
while month.to_i == 2 && day.to_i > 29
  puts 'Oops, that can\'t be right...' + monthname[monthnum] + ' doesn\'t have that many days.'
  puts 'On which day of ' + monthname[monthnum] + ' were you born?'
  day = gets.chomp
  #February has 29 days or less
end
while (month.to_i < 8) && month.to_i % 2 == 0 && day.to_i > 30 || (month.to_i > 8) && month.to_i % 2 != 0 && day.to_i > 30
  puts 'Oops, that can\'t be right...' + monthname[monthnum] + ' doesn\'t have that many days.'
  puts 'On which day of ' + monthname[monthnum] + ' were you born?'
  day = gets.chomp
end
while (month.to_i < 8) && month.to_i % 2 != 0 && day.to_i > 31 || (month.to_i >= 8) && month.to_i % 2 == 0 && day.to_i > 31
  puts 'Oops, that can\'t be right...' + monthname[monthnum] + ' doesn\'t have that many days.'
  puts 'On which day of ' + monthname[monthnum] + ' were you born?'
  day = gets.chomp
end
puts ' '
puts 'So you were born on ' + monthname[monthnum] + ' ' + day + ', ' + year + '.'
puts ' '
srand (year.to_i + month.to_i + day.to_i).to_i
puts 'Your lucky number is ' + ((rand(9)) + 1).to_s + '.'
bodypart = ['ears', 'lungs', 'stomach', 'liver', 'kidneys', 'heart', 'knees']
bodynum = (rand(7)).to_i
puts 'Be careful when it comes to your health, especially your ' + bodypart[bodynum] + '!'
puts ' '
trait = ['admirable', 'beautiful', 'colorful', 'dark', 'easygoing', 'flawless', 'good-natured', 'humorous', 'ingenious', 'jocular']
traitnum = (rand(10)).to_i
puts 'Some would describe you as ' + trait[traitnum] + '.'
fortone = ['strong', 'vulnerable', 'brave', 'cautious', 'loving', 'somewhat reserved']
onenum = ((rand(6)).to_i)
onenumb = (onenum) % 2

if onenumb == 0
  word = ' and'
else
  word = ' but'
end

forttwo = ['make the best of a situation', 'do the right thing', 'help out your friends when they need you', 'hold on to your values', 'see the humorous side of a situation']
twonum = ((rand(5)).to_i)
puts 'You are a ' + fortone[onenum] + ' person,' + word + ' you always manage to ' + forttwo[twonum] + '.'
puts ' '
smart = ['intelligent', 'smart', 'savvy', 'clever']
smartnum = (rand(4)).to_i
puts 'And of course, you are much too ' + smart[smartnum] + ' to believe some silly fortune telling program like me!'
