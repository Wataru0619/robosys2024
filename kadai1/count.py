from collections import Counter

print("Please enter text")

text = input()

if not text:
    print("No imput")
    exit()

c = Counter(text)

print("Character counts:")

for char, count in c.items():
    print(f"'{char}': {count}")

