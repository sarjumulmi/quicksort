require 'pry'



def quicksort(ar)

  pivot = ar[0]
  left = []
  right = []
  sorted = []
  if ar.size<=1
    return ar
  else

    left = ar[1..-1].select {|a| a<pivot}
    right = ar[1..-1].select {|a| a>pivot}

    sorted += quicksort(left) unless left.empty?
    binding.pry
    sorted += [pivot]

    sorted += quicksort(right) unless  right.empty?
    sorted

  end
end

print quicksort([5, 8, 1, 3, 7, 9, 2]).join(" ")
print "\n"
