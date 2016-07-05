class NewHash
  define_method(:initialize) do
    @store = []
  end
  define_method(:newStore) do |key, value|
    @store.push([key, value])
  end
  define_method(:newFetch) do |key|
    @store.each() {|pair| return pair[1] if pair[0] == key}
  end
  define_method(:has_key?) do |key|
    result = false
    @store.each() {|pair| result = true if (pair[0] == key)}
    result
  end
  define_method(:has_value?) do |value|
    result = false
    @store.each() {|pair| result = true if (pair[1] == value)}
    result
  end
  define_method(:length) do
    @store.length()
  end

  define_method(:store) do
    @store
  end

  define_method(:newMerge) do |new_arr|
    left = @store.sort()
    right = new_arr.store.sort()
    sorted = []
    until left.empty? || right.empty?
      if left[0].first < right[0].first
        sorted << left.shift
      elsif left[0].first == right[0].first
        sorted << right.shift
        left.shift
      else
        sorted << right.shift
      end
    end
    left.length > 0 ? sorted.concat(left) : sorted.concat(right)
    sorted
  end

  #   i = 0
  #   j = 0
  #   new_arr = []
  #   new_arr.push(new_arr)
  #   until i == new_arr.length
  #     until j == @store.length
  #       if new_arr[i][0] != (@store[j][0])
  #         new_arr.push(@store[i])
  #       end
  #       j += 1
  #     end
  #     i += 1
  #   end
  #   puts new_arr
  # end
end
