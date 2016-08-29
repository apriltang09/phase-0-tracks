#loop through the word
#for each letter go to the next letter in the alphabet 
#if there is the letter "z", change that letter to an "a" or 
#else go to the next letter.
#make sure to increment to the next letter no matter what 

def encrypt (string) #encrypt is a container, a string goes in
	
index = 0 #initiate a variable for the while loop, this variable stands for the index

while index < string.length #when the index is less than the length of the string

	if string[index] == "z" # if the string at that index is equal to "z"
		string[index] = "a" # assign the string at that index to "a"
	else					# if that isn't true
		string[index] = string[index].next # assign string at that index to the next letter in the alphabet
	end
		index = index + 1 #increment the index, you can increment here b/c still 
end						  #inside while loop

p string # print out each string[index] as a string, p will make it have quotes around it

end

#loop through the word and find out where the letter in the word corresponds to the alphabet index
#subtract one from alphabet index each time to get a higher letter 
#make sure to increment loop so that the method will continue until all letters 
#in the string has been used


def decrypt(string) #decrypt is a container, a string goes in

alphabet = "abcdefghijklmnopqrstuvwxyz" #this is important for compairing w/ string
index = 0 #initialize while loops outside it

while index < string.length # when index is less than the length of the string
		string[index] = alphabet[alphabet.index(string[index]) - 1]
												#string[0] == "b"
								#alphabet.index(string[0]) == 1
	#   string[index] =	#alphabet[1 - 1] == alphabet[0] == a
		index += 1 #index = 0 + 1 == 1 keep going until this number is >= string.length
end

p string #prints out string, with quotes does not return nil

end

#DRIVER TEST CODE #RELEASE 3
#encrypt("abc") #should return "bcd"
#encrypt("zed") #should return "afe"
#decrypt("bcd") #should return "abc"
#decrypt("afe") #should return "zed"

#RELEASE 4
#decrypt(encrypt("swordfish"))
# "txpsegjti" 
#"swordfish"

#nested method works because you first evaluate the innermost parenthesis 
#which in the case would be encrypt("swordfish"). This makes it become "txpsegjti". 
#then we will decrypt "txpsegjti" #calling that in our decrypt method: decrypt("txpsegjti")
#which evalutes to swordfish

#RELEASE 5

#PSEUDOCODING
#ask the user if they want to decrypt or encrypt
#if user wants to encrypt, call the encrypt method
#if user wants to decrypt, call the decrypt method

#DRIVER CODE

puts "Would you like to decrypt or encrypt a password?"
response = gets.chomp

if response == "encrypt"
	puts "What is the password?"
	string = gets.chomp
	# encrypt password, call method here 
	encrypt(string)
else
	puts "What is the password?"
	string = gets.chomp
	# decrypt password
	decrypt(string)
end