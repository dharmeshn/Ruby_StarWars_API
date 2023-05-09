# Ruby API task

>Using the ruby language and the API at https://swapi.dev/ you will form and output a sentence following this format:
>
>`<honourific> <surname> and <honourific> <surname> cruising around in their <starship>`
>
>For example:
>`Ms. Lars and Mr. Skywalker cruising around in their X-wing`

>Where:
>-	Two characters are randomly selected from the API by the script up to a maximum ID of 15
>-	Each character will be referred to as their honourific (Mr. or Ms. for male or female) according to gender then surname
>-	A starship will be randomly selected from the API by the script up to a maximum ID of 30


# Ruby Star Wars API Sentence Generator

I have created Ruby script using HTTParty and RSpec dependencies that generates a sentence in the required output format using the Star Wars API:

### Prerequisites

To run this script, you will need to have the following installed:

- Ruby (You can download it from [https://www.ruby-lang.org/en/downloads/](https://www.ruby-lang.org/en/downloads/))
- HTTParty gem
- RSpec gem

### Setup

1. Clone this repository or download the files.
2. Open the project in Visual Studio Code.
3. Open a terminal and navigate to the directory containing the files.
4. Run the following command to install the required `HTTParty` and `RSpec` gems :

```
gem install httparty
gem install rspec
```
OR
```
bundle install
```



### Running Test

This script includes a RSpec test to ensure that the generated sentence matches the required format. To run the test to generate sentence, simply run the following command:

```
rspec star_Wars_API.spec.rb
```
