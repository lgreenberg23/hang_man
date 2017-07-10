require_relative '../app/models/game.rb'
require_relative '../app/models/user.rb'
require_relative '../app/models/dictionary.rb'
require 'pry'


puts 'Welcome to Hangman! Please type in your name'
name = gets.chomp
player = User.new(name)

Game.setup(player)