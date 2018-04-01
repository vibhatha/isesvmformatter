import numpy as np


gamma_range = np.arange(0.000, 1.000, 0.10)
c_range = np.arange(1, 10, 1)
size1 = len(gamma_range)
size2 = len(c_range)
print("Sizes : ",size1,size2)
total_sum = size1 * size2
count = 0
for i in c_range:
    for j in gamma_range:
        count = count + 1

        if((count / float(total_sum) * 100)==100):
            print("Completed: " + str(count / float(total_sum) * 100) + "%")
        else:
            print("In Progress: " + str(count / float(total_sum) * 100) + "%")
