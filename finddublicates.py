num =[2,4,3,4,5,1,3,6,7,7,8,9,2]

no_dublicates =[]
dublicates =[]

for i in num:
    #print(i)
    if i in no_dublicates:
        #print(i)
        if i not in dublicates:
          #  print(i)
            dublicates.append(i)

    else:
        #print(i)
        no_dublicates.append(i)


print("dublicates :",dublicates)



#count
numbers = [1, 2, 3, 2,7,3, 4, 5, 1]

duplicates = []

for num in numbers:
    if numbers.count(num) > 1:
        if num not in duplicates:
            duplicates.append(num)

print("Duplicates:", duplicates)


numbers = [1,3,7,7, 2, 3, 2, 4, 5, 1]

duplicates = []

for num in numbers:
    if numbers.count(num) > 1 and num not in duplicates:
        duplicates.append(num)

print(duplicates)