$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  #  learn --fail-fast
  # puts directors_database[0][:movies][0][:worldwide_gross] 
  # this points to first director's first movie's gross 
  
  
  director_gross = {}
  director_index = 0 
  while director_index < nds.count do
    movie_gross = 0
    movie_index = 0 
    
    while movie_index < nds[director_index][:movies].count do
      
      movie_gross += nds[director_index][:movies][movie_index][:worldwide_gross] #√
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