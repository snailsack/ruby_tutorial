def getRandomNumber
  1 + rand(100)
end
randomNumber = getRandomNumber
puts randomNumber
puts 'Guess a number between 1-100 (Inclusive)'
def runGame randomNumber, minG, maxG
  guess = gets.chomp
  if guess.to_i === randomNumber.to_i
    puts 'Correct!'
  elsif guess.to_i <= minG.to_i || guess.to_i >= maxG.to_i
    puts 'Number must be larger than '+minG.to_s+' but smaller than '+maxG.to_s
    runGame randomNumber, minG, maxG
  elsif guess.to_i < randomNumber.to_i
    puts 'To low, guess again.'
    lastGuess = guess
    runGame randomNumber, lastGuess, maxG
  elsif guess.to_i > randomNumber.to_i
    puts 'To high, guess again'
    lastGuess = guess
    runGame randomNumber, minG, lastGuess
  end
end 
runGame randomNumber, 0, 101