def longest_Consecutive(array, k)
  if array.length == 0 || k < 1
        return '____'
    end
  new_array = []
    array.each_cons(k) do |word|
        new_array << word.join
    end
    return new_array.max{| a, b | a.length <=> b.length }

end

puts longest_Consecutive(['hi', 'marbles', 'mittens', 'bye', 'lorem', 'ipsum', 'to', 'a', 'hippocampus'], 3);  # -> 'marblesmittensbye'
