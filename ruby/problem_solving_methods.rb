#Release 0: Implement a Simple Search
arr = [42, 89, 23, 1]

def search_array(array, num)
	
i = 0

while i < array.length
	if array[i] == num
		return i
	end
i += 1
end	
end

search_array(arr, 1)

#Release 1: Calculate Fibonacci Numbers
def fib(number)

arr = [0, 1]

	i = 0
	
	while i < number - 2
		
		arr.push(arr[i] + arr[i+1])
		i += 1
	end
	
arr
	
end

fib(100)

#Release 2: Sort an Array
#1. Bubble sort algoritm
#2. Compare the number at indeces next to each other in an array, if the number on 
#the left side of the indeces is smaller than the one on the right, they stay in 
#place, but if the number on the left side is higher than the right, they will 
#switch places. Visuals along with the written explanations. Google, YouTube are good places.
#3. I was feeling curious and underqualified. When I'm curious, I'm interested and 
#excited but when I'm frustrated, I feel like I am not going to be able to get past 
#it and then I tend to procrastinate. 

#4. #Bubble_sort Pseudocode

#define a method that takes one argument. Inside, define a variable that stores the 
#array length. 

#loop through the array. 

#initate a variable that is false. This will ensure that we can stop the program 
#later on when it's true.

#In each loop, if an number stored in a lower index is greater than a number stored 
#at the next index to its right, have the number at the higher index change places 
#with the number at the lower index.

#Do this until there are no more numbers to switch in the array. 

#Print result

#5. Example taken from: https://www.sitepoint.com/sorting-algorithms-ruby/
# We implemented our own numbers for the arguments. 

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort([5, 2, 1, 235, 23])
#=> [1, 2, 5, 23, 235]

#Collaborated with Shana Hagood 