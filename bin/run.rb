# !/usr/bin/env ruby

require_relative "../config/environment"

puts 'Welcome to Hangman! Please type in your name'
name = gets.chomp
player = User.new(name)

Game.setup(player)
