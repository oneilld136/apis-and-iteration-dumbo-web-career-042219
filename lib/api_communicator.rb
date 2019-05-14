require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  #make the web request
  #RestClient.get('http://www.swapi.co/api/people/')
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)

  response_hash.select do |films|
    response_hash
    # binding.pry
  if character_name == [:name]
    return films
    end
  end
end
# get_character_movies_from_api("luke skywalker")







  # iterate over the res



  ponse hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.




def print_movies(films)
  response_string = RestClient.get('http://www.swapi.co/api/people/films')
    response_hash = JSON.parse(response_string)
  response_hash.select do |film|
    response_hash
    # binding.pry
  if films == [:film]
    return films



  # some iteration magic and puts out the movies in a nice list
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end


def get_character_movies_from_api(character_name)
 #make the web request
 response_string = RestClient.get('http://www.swapi.co/api/people/')
 response_hash = JSON.parse(response_string)
 arr = []
 movie_titles = []
 response_hash["results"].select do |h|
   if h["name"].downcase == character_name.downcase
     h["films"].each {|e| arr << e}
   end
 end
 arr.each do |url|
   movie_string = RestClient.get(url)
   movie_hash = JSON.parse(movie_string)
   movie_titles << movie_hash["title"]
 end
 movie_titles
end

get_character_movies_from_api("darth vader")

def print_movies(films)
 films.each do |film|
   puts film
 end
end

def show_character_movies(character)
 films = get_character_movies_from_api(character)
 print_movies(films)
end

get_character_movies_from_api("darth vader")

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
