$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  #  learn --fail-fast
  # puts directors_database[0][:movies][0][:worldwide_gross] 
  # this points to first director's first movie's gross 
  
  director_gross = {}
  director_index = 0 
  while director_index < directors_database.count do
    movie_gross = 0
    movie_index = 0 
    
    while movie_index < directors_database[director_index][:movies].count do
      
      movie_gross += directors_database[director_index][:movies][movie_index][:worldwide_gross] #√
      movie_index +=1 #√
    end
    
    director_name = directors_database[director_index]
    
    director_gross[:director_name] = movie_gross
    
    # director_gross[director_index] = movie_gross
    # above is totally wrong hash key value assignment step 
    # I have tried to correct it but the correction may have issues
    director_index +=1 

  end
  return director_gross
end







 # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!





# # FIRST MISWRITE, FORGETTING INSTRUCTIONS/FORMATTING OF OUTPUT
# def directors_totals(nds)
#   director_names = []
#   director_index = 0 
#   while director_index < directors_database.count do
#     movie_gross = 0
#     movie_index = 0 
#     while movie_index < directors_database[director_index][:movies].count do
  
#       movie_gross += directors_database[0][:movies][0][:worldwide_gross] 
#       movie_index +=1 
#     end
    
#   end 