require_relative "lib/data_store"
require_relative "lib/game"

data = DataStore.from_files(__dir__ + "/data/")
game = Game.new(data)
inc = 1
for question in game.questions

  puts "#{inc}.Вопрос:\n#{question}\n a)-Да \s б)-Нет \s в)-Иногда\n\n"
  print "Ваш ответ: "

  symbol = nil
  until symbol == "а" || symbol == "б" || symbol == "в"
    symbol = STDIN.gets.to_s.chomp.strip
  end

  game.calculate_points(symbol)
  inc += 1
end

puts game.response_to_user
