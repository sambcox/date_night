class Movie
  attr_accessor :title, :score, :left, :right
  def initialize(title, score)
    @title = title
    @score = score
    @left = nil
    @right = nil
  end

  def return_information
    {
      @title => @score
    }
  end
end
