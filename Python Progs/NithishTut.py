print("Enter any number to convert into binary, Enter '999' to exit.")
while True:
    x = int(input("Enter the number: "))
    if x == 999:
        break
    elif x < 0:
        print("Enter positive numbers")
    else:
        print(x,"in binary:",bin(x))