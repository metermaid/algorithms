# undirected graphs with weights for all the algorithms!

class Graph
   Node = Struct.new(:name, :neighbours)

   def initialize(graph)# [[node1, node2, dist], etc.]
      @vertices = Hash.new{|h,k| h[k]=Node.new(k,[])} # quick lookups
      @edges = {}
      graph.each do |(v1, v2, dist)|
         @vertices[v1].neighbours << v2
         @vertices[v2].neighbours << v1
         @edges[[v1, v2]] = @edges[[v2, v1]] = dist
      end
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