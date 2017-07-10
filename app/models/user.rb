class User
	attr_accessor :wins, :losses
	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@wins = 0
		@losses = 0
		@@all << self
	end

	def self.all 
		@@all 
	end

	def self.find_or_create_by_name(name)			
		if self.all.find {|user| user.name == name}
			player = self.all.find {|user| user.name == name}
			puts 
			puts
			puts "Welcome back #{player.name}! Here are your stats:"
			player.display_stats
			puts
			puts
		else
			player = self.new(name)
		end
		player
	end
	
	def display_stats
		puts "Wins: #{wins} game(s)"
		puts "Losses: #{losses} game(s)"
	end

end

