load 'implementation.rb'

# floyd warshall algorithm O(n^3)
class Graph
  def all_pairs
   vertices = @vertices.values
   distances = {}
   vertices.each do |vertex|
    distances[vertex.name] = Hash.new(Float::INFINITY)
   end
   vertices.each {|vertex| distances[vertex.name][vertex.name] = 0 }
   @edges.each do |edge|
      nodes,distance = edge
      a,b = nodes
      distances[a][b] = distance
      distances[b][a] = distance # we're undirected!
    end
    vertices.each do |k|
      k = k.name
      vertices.each do |i|
        i = i.name
        vertices.each do |j|
          j = j.name
          distances[i][j] = distances[i][k] + distances[k][j] if distances[i][j] > distances[i][k] + distances[k][j]
        end
      end
    end

   return distances
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

p g.all_pairs