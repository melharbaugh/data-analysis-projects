my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
new_string = my_string[3:] + my_string[:3]

# Use a template literal to print the original and modified string in a descriptive phrase.
print('The orginal string was', my_string, 'and the modified string is', new_string)


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
num = int(input("Enter number of letters to relocate: "))
new_string = my_string[num:] + my_string[:num]

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
