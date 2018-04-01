import sys
import csv

input=sys.argv[1]

with open(input, 'r') as input_file, open(input+"_trim", 'w') as output_file:
    count = 0
    for line in input_file:
        print(line[:-3])
        newline = line[:-3]
        output_file.write(line)

