import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('~/github/smo/SMO/stats/covtype_libsvm_ise_test_x_bin.1_1')
data = df.get_values()
x=[]
y=[]
count=0
for item in data:
    print(item[0])
    count = count + 1
    x.append(item[0])
    y.append(count)

print(x)
print(y)

plt.plot(y,x)
plt.xlabel("Models")
plt.ylabel("Accuracy")
plt.title("Accuracy Variation with Models")
plt.show()
plt.savefig("~/github/smo/SMO/stats/plots/covtype_libsvm_ise_test_x_bin.1_1.png")
