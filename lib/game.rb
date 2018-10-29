class Game
  attr_reader :questions

  def initialize(data)
    @questions = data.questions
    @result = data.result
    @points = 0
  end

  def calculate_points(symbol)
    @points +=
      case
      when ("в").include?(symbol) then 1
      when ("а").include?(symbol) then 2
      when ("б").include?(symbol) then 0
      end
  end

  def response_to_user
    number =
      case
      when (0..3).include?(@points) then 0
      when (4..8).include?(@points) then 1
      when (9..13).include?(@points) then 2
      when (14..18).include?(@points) then 3
      when (19..23).include?(@points) then 4
      when (24..28).include?(@points) then 5
      when (29..33).include?(@points) then 6
      end
    @result[number]
  end
end

