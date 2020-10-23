# Challenge 1

mod = lambda a,b: 1 if a%b==0 else 0

def divisor(b):
    """
    input: a number
    output: a function that returns 1 if the number is divisible by another number (to be passed later) and zero otherwise
    """
    return lambda a: mod(a,b)

print(divisor(5)(10))

divisible5 = divisor(5)

print(divisible5(10))

# Challenge 2

list1 = [1,2,3,4]
list2 = [2,3,2,5]

compare = lambda a,b: True if a>b else False
for x,y in zip(list1,list2):
    print(compare(x,y))


# Challenge 3

list1 = ['Engineering', 'Computer Science', 'Political Science', 'Mathematics']
list2 = ['Lab', 'Homework', 'Essay', 'Module']

sorted_listed = sorted(list(zip(list1,list2)), key=lambda ele: ele[1])
print(sorted_listed)

# Sorted key example
lst = ["Sheep", "Cattle", "Ox", "Kittens", "Dogs", "Ducks"]
sorted(lst, key=lambda word: (len(word),word))

