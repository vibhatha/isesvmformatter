import csv
import sys

input = sys.argv[1]
output = sys.argv[2]

with open(input, 'r') as input_file, open(output, 'w') as output_file:
    for line in input_file:
        cls=""
        features=""
        cls = line[0:1]
        features = line[2:len(line)]
        if(cls=='2'):
            cls='-1'
        newline = cls+" "+features
        output_file.write(newline)


        #if line.strip() == '2':
        #    output_file.write('-1\n')
        #else:
        #    output_file.write(line)
