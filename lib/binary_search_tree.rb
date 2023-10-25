require_relative 'movie.rb'

class BinarySearchTree
  attr_reader :root_movie, :recursive_counter
  def initialize
    @recursive_counter = 0
    @root_movie = nil
  end

  def insert(score, title)
    @root_movie = insert_recursive(@root_movie, title, score)
    counter_return = @recursive_counter
    @recursive_counter = 0
    counter_return
  end

  private

  def insert_recursive(current_movie, title, score)
    return Movie.new(title, score) if current_movie.nil?

    if score < current_movie.score
      current_movie.left = insert_recursive(current_movie.left, title, score)
    elsif score > current_movie.score
      current_movie.right = insert_recursive(current_movie.right, title, score)
    end

    @recursive_counter += 1

    current_movie
  end
end