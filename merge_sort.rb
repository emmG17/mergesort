def sort(arr)
  if arr.length == 1
    return arr
  end
  middle = (arr.length) / 2
  left = arr.take(middle)
  right = arr.drop(middle)
  
  sorted_l = sort(left)
  sorted_r = sort(right)

  merge(sorted_l, sorted_r)
end

def merge(left, right)
  return right if left.empty?
  return left if right.empty?
  
  sorted = (left.first < right.first) ? left.shift : right.shift
  [sorted] + merge(left, right)
end
