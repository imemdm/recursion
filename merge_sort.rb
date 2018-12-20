def merge_sort(arr)
  return if arr.length < 2 # base case

  left = arr[0, arr.length / 2]
  right = arr[arr.length / 2, arr.length - 1]
  merge_sort(left)
  merge_sort(right)

  i1 = 0
  i2 = 0

  arr.length.times do |i|
    if right[i2].nil? || 
      (!left[i1].nil? && (left[i1] <=> right[i2])== -1)
      arr[i] = left[i1]
      i1 += 1
    else
      arr[i] = right[i2]
      i2 += 1
    end
  end
  arr
end

p merge_sort([5, 2, 3, 11, 4, 7])