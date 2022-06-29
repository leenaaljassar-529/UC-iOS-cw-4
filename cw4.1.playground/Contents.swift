import UIKit

let family = ["Waleed", "Nadeen", "Reema", "Leena", "Fahad"]

print(family.count)

var evenNumbers = [2, 4, 6, 8, 10, 12]

evenNumbers.remove(at: 1)

print(evenNumbers)

evenNumbers+=[6,18,20,22]
 
print(evenNumbers)

print(evenNumbers.randomElement()!)

evenNumbers.removeAll()

print(evenNumbers)

var numbers = [1,2,3,4,5]

//for x in 1...5{
//    print(x)
//}

for number in numbers{
    print(number)
}
numbers.append(6)
numbers.append(7)
numbers.append(8)
numbers.append(9)
numbers.append(10)

for number in numbers{
    print(number)
}

print(numbers)
