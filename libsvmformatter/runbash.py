import numpy as np
import subprocess


def method1(datasource='a9a', C=10, gamma=0.01):
    params = datasource+" "+str(C)+" "+str(gamma)
    subprocess.call("/home/vibhatha/PycharmProjects/ISESVMFormatter/testbash.sh "+params, shell=True)


def method2(datasource, c_range, gamma_range):
    for c in c_range:
        for gamma in gamma_range:
            method1(datasource=datasource, C=c, gamma=gamma)


datasource='a9a'
gamma_range = np.arange(0.000, 1.000, 0.050)
c_range = np.arange(1, 40, 5)


method2(datasource=datasource, c_range=c_range, gamma_range=gamma_range)
