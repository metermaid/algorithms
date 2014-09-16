# flatten an array
def manual_flatten(en, &block)
  # must be enumerable and respond to <<
  return en if en.empty?
  test = en.reduce(en.class.new) { |en,item| item.respond_to?(:reduce) ? block.call(en, manual_flatten(item, &block)) : en << item }
end
p (manual_flatten([12,[323,3232,[32,3232,[3232]]]]){|arr1, arr2|  arr1 + arr2}) == [12,[323,3232,[32,3232,[3232]]]].flatten