from collections import Counter

print("Please enter text")

text = input()

if not text:
    print("No input")
    exit()

c = Counter(text)

print("Character counts:")

for character, count in c.items():
    print(f"'{character}': {count}")

