class GamesController < ApplicationController

  def score
    @randomletters = params[:randomletters]
    @randomwordletters = @randomletters.split(' ')
    @word = params[:word]
    @userwordletters = @word.split('')
    # The word can’t be built out of the original grid

    # The word is valid according to the grid, but is not a valid English word
    # The word is valid according to the grid and is an English word
  end

  def new
    # create a new @letters instance variable storing these random letters from the alphabet.
    @letters = ('a'..'z').to_a.sample(10)
  end

  # private
  # methods go under this line ---------

end
