# frozen_string_literal: true

def fibs(number)
  arr = []
  first_num = 0
  second_num = 1
  number.times do
    arr << first_num
    first_num = second_num
    second_num = arr.last + second_num
  end
  arr
end

def fibs_rec(number, arr = [0, 1])
  return arr.pop && arr if number <= 1

  arr << arr[-2] + arr[-1]
  fibs_rec(number - 1, arr)
end

def merge_sort(array)
  length = array.length
  return array if length == 1

  sorted_left = merge_sort(array[0...(length / 2)])
  sorted_right = merge_sort(array[(length / 2)..])
  length.times do |i|
    first_left = sorted_left.first || sorted_right.first + 1
    first_right = sorted_right.first || sorted_left.first + 1
    array[i] = first_left < first_right ? sorted_left.shift : sorted_right.shift
  end
  array
end
