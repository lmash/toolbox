# Looping over a range of numbers
for i in [0, 1, 2, 3, 4, 5]:
    print(i**2)

# Replace with
for i in range(6):
    print(i**2)

# Looping over a collection
colours = ['red', 'green', 'blue', 'yellow']

for i in range(len(colours)):
    print(colours[i])

# Replace with
for colour in colours:
    print(colour)

# Looping backwards
colours = ['red', 'green', 'blue', 'yellow']

for i in range(len(colours)-1, -1, -1):
    print(colours[i])

# Replace with
for colour in reversed(colours):
    print(colour)

# Looping over a collection and indices
colours = ['red', 'green', 'blue', 'yellow']

for i in range(len(colours)):
    print(f'{i} --> {colours[i]}')

# Replace with
for i, colour in enumerate(colours):
    print(f"{i} --> {colour}")

# Looping over two collections
names = ['raymond', 'rachel', 'matthew']
colours = ['red', 'green', 'blue', 'yellow']

n = min(len(names), len(colours))
for i in range(n):
    print(f"{names[i]} --> {colours[i]}")

# Replace with
for name, colour in zip(names, colours):
    print(f"{name} --> {colour}")

# Looping in sorted order
colours = ['red', 'green', 'blue', 'yellow']

for colour in sorted(colours):
    print(colour)

# Reverse sorted order
for colour in sorted(colours, reverse=True):
    print(colour)

# Custom sort order
colours = ['red', 'green', 'blue', 'yellow']


def compare_length(c1, c2):
    if len(c1) < len(c2): return -1
    if len(c1) > len(c2): return 1
    return 0

#print(f"sorted with cmp {sorted(colours, cmp=compare_length)}")

# Replace with
print(f"Custom sort order {sorted(colours, key=len)}")

# Call a function until a sentinel value
blocks = []
while True:
    block = f.read(32)
    if block == '':
        break
    blocks.append()

from functools import partial

# Replace with
blocks = []
for block in iter(partial(f.read, 32), ''):
    blocks.append(block)