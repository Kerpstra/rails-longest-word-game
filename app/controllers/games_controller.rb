class GamesController < ApplicationController

  def score
    @word = params[:word]
    require 'open-uri'
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @dictionary = JSON.parse(URI.open(url).read)
    @randomletters = params[:randomletters]
    @randomwordletters = @randomletters.split(' ')
    @userwordletters = @word.split('')
    # The word can’t be built out of the original grid
    @build = @userwordletters.all? { |letter| @randomwordletters.include?(letter) }
  end

  def new
    # create a new @letters instance variable storing these random letters from the alphabet.
    @letters = ('a'..'z').to_a.sample(10)
  end
end
