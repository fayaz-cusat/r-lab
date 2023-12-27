# Reading a file

lines = []

with open('./rand.txt') as f:
    lines = f.readlines()
    print(lines)
    print(type(lines))
    print(len(lines))

# MapReduce
# Map: split the data into chunks

