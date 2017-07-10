require 'pry'
require 'byebug'

class Game
	attr_accessor :player, :word_length, :word, :turns, :board

	def initialize(player, word_length)
		#need to set board and gallows 
		# binding.pry
		@player = player
		@word_length = word_length
		@board = "-" * word_length
		@turns = 5
	end

	def set_word
		@word = ''
		return @word if word_length == 0
		until @word.length == word_length
			@word = Dictionary::DICTIONARY.sample
		end
		@word
	end

	# def dictionary
	# 	['hello', 'goliath', 'mountains', 'recede']
	# end

	def display_board
		puts self.board.chars.join(" ")
		#needs to also display the man
	end

	def get_letter
		puts 'Please enter a letter of the alphabet'
		letter = gets.chomp
		# debugger
		if is_a_letter(letter)
			if check_letter(letter) 
				update_board(letter)
			else
				puts 'Nice try, sucker.'
				# update_man - will display board
				@turns -= 1
			end
		else	
			self.get_letter
		end
	end

	def is_a_letter(letter)
		# system("exit") if letter == "exit"
		# figure out a way to exit the game midway through
		if letter.length > 1
			puts "Don't get so excited. 1 guess at a time please."
			get_letter
		end
		("a".."z").to_a.include?(letter)
	end

	def check_letter(letter)
		self.word.split("").include?(letter) 
	end

	def update_board(letter)
		self.word.chars.each_with_index do |char, i|
			if char == letter
				board[i] = letter
			end
		end
		display_board
	end

	def game_over?
		if self.turns == 0
			puts "Thank you for playing. Better luck next time."
			player.losses +=1
			puts "Just to let you know, the word was '#{word}'. Just saying.."
			return true
		elsif board.include?('-')
			return false
		else
			puts "Congratulations! You have survived!"
			player.wins +=1
			return true
			#new game?
		end
	end

	def ask_user
		puts "do you want to play another game, switch users, or quit?"
		puts "'yes' = play another game, 'switch' = switch users, press any key to exit the game"
		response = gets.chomp
		if response == 'yes'
			self.class.setup(player)
		elsif response == "switch"
			puts "what is your name?"
			name = gets.chomp
			player2 = User.find_or_create_by_name(name)
			self.class.setup(player2)
		else
			puts "Thanks for playing."
			system("exit")
		end
	end


	def display_stats
		@player.display_stats

	end

	def self.setup(player)
		puts 'how long do you want your word to be, starting at 5? Type 5 for a 5-letter
		word, 6 for a 6-letter word, etc to 8.'
		word_length = gets.chomp.to_i
		self.setup(player) if word_length < 0
		current_game = Game.new(player, word_length)
		current_game.play
	end

	def	play
		set_word
		self.display_board
		until self.game_over?
			self.get_letter
		end
		self.display_stats
		self.ask_user
	end
end