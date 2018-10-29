class DataStore
  attr_reader :questions, :result

  def self.from_files(path)
    questions = File.read(path + "questions.txt", encoding:'UTF-8').split("\n")
    result = File.read(path + "result.txt", encoding:'UTF-8').split("\n")
    new(questions, result)
  end

  def initialize(questions, result)
    @questions = questions
    @result = result
  end

end
