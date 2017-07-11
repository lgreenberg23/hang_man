The README should be well written and clear. Anyone reading your readme should know exactly what your app/gem does, how to get it running on their computer, and how to contribute to it.


Welcome to Hangman! The objective of the game is to guess the letters of a given
word before your hangman is completely drawn out.  A new limb is added for each incorrect guess.


How to run it on your computer:

In your terminal, navigate into the bin folder of 'hangman', and then type "ruby run.rb" to start the game.
 
This includes all of the other files that each class depends on, as well as access to the modules that are inherited by the Game class. 
The game begins through the 'run.rb' file, and is mostly played out through the 'game.rb' file.


How it works:

The way this works is that through the run.rb file, the user is prompted for their name, which then creates a new User object. Once the user is created a game is instantiated for that specific user, so that the game can add to the user's wins or losses. 

When the game is played, the user is asked what length of word they want to guess. The user provides a number, and a word is selected at random from the Dictionary module, which contains over 950 words. This process is repeated until the word is the correct number of letters that the user requested.

Once a word is chosen, the user is prompted for a letter, which is then checked for 2 things: 1. that it is actually a letter and not a number or another keyboard character, and 
2. whether that letter is in the word. 

If the letter is in the word, it appears in its place on the board. If it is not in the word, a part of the hangman is displayed and the loser is one step closer to killing their man.

After each turn, the board is checked and the number of turns remaining (based on the limbs left to be drawn out) to see if the game is over, based on whether the user has won by completing the word correctly or if the user has lost (the man has been fully hanged).

At end of game, the stats (the user's wins and losses) will be displayed, and the user will be asked if they want to play another game, exit , or switch users. If they switch users, a find_or_create_by_name method will be called to determine if the user already exists and has a history of wins and losses that will be added to, or if a new user should be created. 



Some things to be improved upon:
There is currently no method that keeps track of the letters that have already been guessed. As a result of this, if you guess a letter that is already on the board it will simply be overwritten and nothing will happen to you, but if you guess a letter that you have already guessed and it is incorrect, another limb will appear and you will be closer to losing. 
