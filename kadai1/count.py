from collections import Counter

print("Please enter text")
text = input()

if not text:
    print("No input")
    exit()

c = Counter(text)

print(c)
