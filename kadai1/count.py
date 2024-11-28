from collections import Counter

print("Please enter text")

text = input()

if not text:
    print("No imput")
    exit()

c = Counter(text)

print("Character counts:")

for character, count in c.items():
    print(f"'{character}': {count}")

