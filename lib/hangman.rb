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
      word_list = []
       words.each do |line|
        word_list.push
       end
    end

    chosen_word = words_list.sample

    def play
      puts 'Would you like to play a round?'
       answer = gets.chomp.downcase

        if answer === 'yes'

        elsif answer === 'no'

        elsif answer != 'yes' || answer != 'no'
          puts 'Respond again with yes or no!'
          play()
        end
      end
    play()
