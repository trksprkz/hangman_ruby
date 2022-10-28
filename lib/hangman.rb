# Create a hangman game
  # When new game started, select random word between 5 and 12 characters long
  # set it to secret word
  # Allow player to guess (regardless lowercase or uppercase)
  # After guessing, displays length of word as _____ (underscores)
  # Update display revealing each correct letter guessed

  # Allow saving state of the game
  # Add ability to load saved game
require 'csv'

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
      $replacement_char = ''
    def if_accurate
        if $characters.to_s.include?($guess)
          $replacement_char = $characters.gsub($guess)
        elsif $characters.exclude?($guess)
          puts "The letter wasn't in the word, try again \n \n"
          play_round
      end
    end

    randomize = $chosen_word.scan /\w/
    $characters = randomize.join('')

    def play_round
        until $replacement_char.length === $chosen_word.length do
          $replacement_char << '_'
        end

      puts "\n The word is #{$replacement_char} #{$replacement_char.length} characters long \n \n"
      puts "What's your guess?"
      guessed = gets.chomp
      $guess = guessed.downcase
      if_accurate()
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

