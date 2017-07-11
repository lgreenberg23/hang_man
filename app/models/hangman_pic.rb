module HangmanPic

  def show_hangman(level)

    case level
    when 1
      puts "      _______ "
      puts "     |        "
      puts "     |        "
      puts "     |        "
      puts "     |        "
      puts "     |        "
      puts "     |        "
      puts "_____|__________ "
    when 2
      puts "      _______ "
      puts "     |       |"
      puts "     |      "
      puts "     |       "
      puts "     |      "
      puts "     |       "
      puts "     |      "
      puts "_____|___________ "
    when 3
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( )"
      puts "     |       |"
      puts "     |      "
      puts "     |       "
      puts "     |      "
      puts "_____|___________ "
    when 4
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( )"
      puts "     |       |"
      puts "     |      /|"
      puts "     |       "
      puts "     |      "
      puts "_____|___________ "
    when 5
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( )"
      puts "     |       |"
      puts "     |      /|\\"
      puts "     |       "
      puts "     |      "
      puts "_____|___________ "
    when 6
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( )"
      puts "     |       |"
      puts "     |      /|\\"
      puts "     |       |"
      puts "     |      "
      puts "_____|___________ "
    when 7
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( )"
      puts "     |       |"
      puts "     |      /|\\"
      puts "     |       |"
      puts "     |      / "
      puts "_____|___________ "
    when 8
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( )"
      puts "     |       |"
      puts "     |      /|\\"
      puts "     |       |"
      puts "     |      / \\"
      puts "_____|___________ "
    when 9
      puts "      _______ "
      puts "     |       |"
      puts "     |      ( ) < 'I feel so dead inside' "
      puts "     |       |"
      puts "     |      /|\\"
      puts "     |       |"
      puts "     |      / \\"
      puts "_____|___________ "
    end
    puts
  end
end
