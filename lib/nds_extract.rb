$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # puts directors_database[0][:movies][0][:worldwide_gross] 
  # this points to first director's first movie's gross 
  
  director_gross = {}
  director_index = 0 
  while director_index < nds.count do
    movie_gross = 0
    movie_index = 0
    
    while movie_index < nds[director_index][:movies].count do
      
      movie_gross += nds[director_index][:movies][movie_index][:worldwide_gross] #√
      # puts nds[director_index][:movies][movie_index][:worldwide_gross] #√
      # by above puts test, this is successfully iterating thru A) movies and 
      # B) directors 
      movie_index +=1 #√
      
    end
    
    #  learn --fail-fast
    director_name = nds[director_index][:name]
    puts director_name
    
    director_gross[director_name] = movie_gross
    
    # director_gross[director_index] = movie_gross
    # above is totally wrong hash key value assignment step 
    # I have tried to correct it but the correction may have issues
    director_index +=1 

  end
  director_gross #return vs puts?
end