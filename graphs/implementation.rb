class Graph
 Vertex = Struct.new(:name, :neighbours, :dist, :prev)
 
 def initialize(graph)
   @vertices = Hash.new{|h,k| h[k]=Vertex.new(k,[],Float::INFINITY)}
   @edges = {}
   graph.each do |(v1, v2, dist)|
     @vertices[v1].neighbours << v2
     @vertices[v2].neighbours << v1
     @edges[[v1, v2]] = @edges[[v2, v1]] = dist
   end
   @dijkstra_source = nil
 end
end
