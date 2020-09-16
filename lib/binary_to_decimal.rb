# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
#
array = []
8.times do
  array << rand(2)
end

def binary_to_decimal(array)
  puts array.join("")
  result = (array[0] * 2**7) + (array[1] * 2**6) + (array[2] * 2**5) + (array[3] * 2**4) + (array[4] * 2**3) + (array[5] * 2**2) + (array[6] * 2**1) + (array[7] * 2**0)
  return result
end

puts binary_to_decimal(array)

def array_equals(array1,array2)
  if array1.length != array2.length
    return false
  end
  i = 0
  array1.length.times do
    if array1[i] != array2[i]
      return false
    end
    i += 1
  end
  return true
end

def decimal_to_binary(num)
  zeros_and_ones = []

  until num == 0 do
    num / 2
    if num % 2 == 1
      zeros_and_ones << 1
    else
      zeros_and_ones << 0
    end
    num = num / 2
  end

  binary = []

  zeros_and_ones.length.times { |i| binary << zeros_and_ones[(i + 1) * -1] }

  return binary.join("")
end
