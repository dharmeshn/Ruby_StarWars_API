require 'httparty'

RSpec.describe 'Star Wars API' do
  it 'should return a sentence with required output format' do

    BASE_URL = 'https://swapi.dev/api/'   # Base URL of the API

    # Method to get a random character from the API
    def get_random_character

      # Get a random character
      random_id = rand(1..15)
      response = HTTParty.get("#{BASE_URL}people/#{random_id}")
      character = response['name']
      gender = response['gender']


      # Determine the honourific based on gender
      if gender == 'male'
        honourific = 'Mr.'
      elsif gender == 'female'
        honourific = 'Ms.'
      else
        honourific = ''
      end

      # Extract the surname from the character name
      surname = character.split.last

      # Return the honourific and surname
      return [honourific, surname]
    end

    # Method to get a random starship from the API
    def get_random_starship
      # Get a random starship
      random_id = rand(1..30)
      response = HTTParty.get("#{BASE_URL}starships/#{random_id}")
      starship = response['name']

      # Retry if the starship name is blank
      if starship.nil? || starship.empty?
        return get_random_starship
      end

      # Return the starship
      return starship
    end

    # Generate the sentence
    def generate_sentence
      # Get two random characters
      character1 = get_random_character
      character2 = get_random_character

      # Get a random starship
      starship = get_random_starship

      # Output the sentence
      sentence = "#{character1[0]} #{character1[1]} and #{character2[0]} #{character2[1]} cruising around in their #{starship}"
      puts sentence

     expect(sentence).to match(/^\s*(Mr\.|Ms\.|)? [A-Za-z\w\-]+ and (Mr\.|Ms\.|)? [A-Za-z\w\-]+ cruising around in their [\w\-\s]+$/)

    end
    # Call the method to generate the sentence
    puts 'Genarated Sentence:'
    puts generate_sentence

    puts '***** NOTE : Where gender is not specified Male or Female, kept that honourific blank, while generating sentence *****'
  end
end
