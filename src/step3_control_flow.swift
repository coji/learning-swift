let temprature = 25
if temprature > 30 {
  print("It's very hot!")
} else if temprature > 20 {
  print("It's a nice day")
} else {
  print("It's a bit cold")
}

print("\nCounting from 1 to 5:")
for i in 1...5 {
  print("Number \(i)")
}

let fruits = ["apple", "banana", "orange"]
print("\nMy favorite fruits:")
for fruit in fruits {
  print(fruit)
}

print("\nCountdown:")
var countdown = 3
while countdown > 0 {
  print(countdown)
  countdown -= 1
}
print("Liftoff!")
