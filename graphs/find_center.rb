load 'floyd-warshall.rb'

#Find one object that is pointed by all other objects. Find the center of graph (2)

class Graph
   def find_center
      all_pairs_distances = all_pairs
      farthest_path_length = {}

      vertices = @vertices.values

      vertices.each do |i|
         i = i.name
         farthest_path_length[i] = -Float::INFINITY
         vertices.each do |j|
            j = j.name
            farthest_path_length[i] = all_pairs_distances[i][j] if i != j && all_pairs_distances[i][j] > farthest_path_length[i]
         end
      end
      return @vertices[farthest_path_length.min_by{ |k,v| v }.first]
   end
end

g = Graph.new([
   ["vancouver", "honolulu", 450],
   ["vancouver", "paris", 1000],
   ["vancouver", "tokyo", 1400],
   ["vancouver", "new york", 600],
   ["paris", "tokyo", 1200],
   ["new york", "tokyo", 2700],
   ["new york", "paris", 1400],
   ["new york", "la", 380],
   ["la", "honolulu", 530]
   ])

p g.find_center