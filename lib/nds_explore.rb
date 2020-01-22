$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  o = 0
  output = ""
  
  while o < directors_database.length do
    if directors_database[o][:name] == "Stephen Spielberg"
      m = 0
      while m < directors_database[o][:movies].length do
        #pp directors_database[o][:movies][m]
        output += directors_database[o][:movies][m][:title]
        output += "\n"
        m += 1
      end
    end
    o += 1
  end
  puts output
  output
end
