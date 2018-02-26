def uniq(array)
singles = []

array.each do |num1|
  if singles.include?(num1)
    next
  else
    singles << num1
  end
end

singles
end

[1, 2, 1, 3, 3].uniq

def two_sum(array)
  zero_sum = []
  array.combination(2) do |a, b|
    if a + b == 0
      zero_sum << [array.index(a), array.index(b)]
    end

  end

  zero_sum
end

 two_sum([-1, 0, 2, -2, 1])

 def my_transpose(array)
   trxpx = Array.new(array.length) { Array.new(array.length) }

   array.length.times do |i|
     array.length.times do |j|
       trxpx[j][i] = array[i][j]
     end
   end

   trxpx
 end

my_transpose( [
     [0,1,2],
     [3,4,5],
     [6,7,8]
     ])

def stock_picker(array)
  largest = 0
  buy, sell = nil

  array.length.times do |i|
    (i + 1).upto (array.length - 1) do |j|
      if (array[j] - array[i]) > largest
        largest = array[j] - array[i]
        buy = i
        sell = j
      end
    end
  end

  [buy, sell]
end


stock_picker([7, 2, 3, 1, 4, 5, 8])
