#!/bin/bash
echo "#### Looping over a range of numbers ####"
# for i in [0, 1, 2, 3, 4, 5]:
#         print(i**2)

# Replace with
# for i in range(6)
#    print(i**2)

grep -rn -e "for \w* in \[[0-9,]*" *.py

echo ""
echo "#### Looping over a collection ####"
echo "#### Looping backwards ####"
echo "#### Looping over a collection & indices ####"
#colours = ['red', 'green', 'blue', 'yellow']

#for i in range(len(colours)):
#    print(colours[i])

# Replace with
#for colour in colours:
#    print(colour)

grep -rn -e "for \w* in range(len" *.py

# Looping backwards
#colours = ['red', 'green', 'blue', 'yellow']

#for i in range(len(colours)-1, -1, -1):
#    print(colours[i])

# Replace with
#for colour in reversed(colours):
#    print(colour)

# Looping over a collection and indices
#colours = ['red', 'green', 'blue', 'yellow']

#for i in range(len(colours)):
#    print(f'{i} --> {colours[i]}')

# Replace with
#for i, colour in enumerate(colours):
#    print(f"{i} --> {colour}")


echo ""
echo "#### Looping over two collections ####"
#names = ['raymond', 'rachel', 'matthew']
#colours = ['red', 'green', 'blue', 'yellow']

#n = min(len(names), len(colours))
#for i in range(n):
#    print(f"{names[i]} --> {colours[i]}")

# Replace with
#for name, colour in zip(names, colours):
#    print(f"{name} --> {colour}")
grep -A1 -rn -e "min(len(" *.py | grep -e "for \w* in range("

echo ""
echo "##### Custom sort order ####"
#colours = ['red', 'green', 'blue', 'yellow']

#def compare_length(c1, c2):
#    if len(c1) < len(c2): return -1
#    if len(c1) > len(c2): return 1
#    return 0

#print(f"sorted with cmp {sorted(colours, cmp=compare_length)}")

# Replace with
#print(f"Custom sort order {sorted(colours, key=len)}")
grep -rn -e "cmp=" *.py

