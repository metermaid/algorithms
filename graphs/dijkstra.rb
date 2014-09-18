load 'implementation.rb'

# dijkstras algorithm
class Graph
   Distance = Struct.new(:node, :closest_node, :distance)

  def djikstra(source)
   vertices = @vertices.values
   distances = {}
   vertices.each do |v|
     distances[v.name] = Distance.new(v, nil, Float::INFINITY)
   end
   distances[source].distance = 0
   queue = distances.clone
   until queue.empty?
     current_node_distance = queue.values.min_by(&:distance)
     current_node = current_node_distance.node
     break if current_node_distance.distance == Float::INFINITY
     queue.delete(current_node.name)
     current_node.neighbours.each do |neighbour_name|
       neighbour = @vertices[neighbour_name]
       neighbour_distance = distances[neighbour_name]
       if vertices.include?(neighbour)
         alt = current_node_distance.distance + @edges[[current_node.name, neighbour_name]]
         if alt < neighbour_distance.distance
           neighbour_distance.distance = alt
           neighbour_distance.closest_node = current_node.name
         end
       end
     end
   end
   return distances
  end

  def shortest_path(source, target)
   distances = djikstra(source)
   path = []
   u = target
   while u
     path.unshift(u)
     u = distances[u].closest_node
   end
   return path, distances[target].distance
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

p g.shortest_path("paris", "vancouver")
p g.shortest_path("paris", "honolulu")
p g.shortest_path("new york", "honolulu")