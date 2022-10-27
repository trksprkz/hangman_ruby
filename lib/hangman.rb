# Create a hangman game
  # When new game started, select random word between 5 and 12 characters long
  # set it to secret word
  # Allow player to guess (regardless lowercase or uppercase)
  # After guessing, displays length of word as _____ (underscores)
  # Update display revealing each correct letter guessed

  # Allow saving state of the game
  # Add ability to load saved game
require 'csv'
require 'erb'

  class Game
    attr_accessor :guess, :display
  end

    def words_list
      words = File.readlines('google-10000-english-no-swears.txt')
      $word_list = []
       words.each do |line|
        $word_list.push
       end
    end

      $chosen_word = words_list.sample

    def play_round
      characters = $chosen_word.scan()
      replacement_char = []
        until replacement_char === characters
          replacement_char.push['_']
        puts replacement_char
        end
      guess = gets.chomp.downcase
    end

    def play
      puts 'Would you like to play a round?'
       answer = gets.chomp.downcase

          if answer === 'yes'
            play_round()
          elsif answer === 'no'
            puts "No worries, type yes when you're ready"
              ready_to_play = gets.chomp.upcase
              play()

          elsif answer != 'yes' || answer != 'no'
            puts 'Respond again with yes or no!'
            play()
          end
      end
    play()


    def if_accurate
      if guess.include?(characters)
        replacement_char = characters.gsub(Guess)

      elsif Guess.include?(character) == false
        play_round
    end
  end
