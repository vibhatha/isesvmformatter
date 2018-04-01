import numpy as np
import csv
import glob


def method1(base_path, data_source, exp_id, output_base):
    ## Input Args
    output_file = 'execution'+'_'+data_source+"_"+exp_id+".csv"
    output_path = output_base + output_file

    all_files = glob.glob(base_path+data_source+"/"+exp_id+"/"+"*")
    #print(all_files)
    headings = []
    executiontimes = []
    exec_items = 'Experiment Configuration, Execution Time Per Experiment\n'
    for file in all_files:
        fnames = str.split(file,'__')
        headings.append(fnames[1])
        file = open(file,'r')
        lines = file.readlines()
        exec_time = (lines[len(lines)-2])
        str2 = str.split(exec_time,'Training Time :')
        str1 = str.split(str2[1],' ')
        executiontimes.append(float(str1[1]))
        exec_items += str(fnames[1])+","+(str1[1]) + "\n"
    #print(exec_items)
    filewrite = open(output_path,'wb')
    filewrite.write(exec_items)
    filewrite.close()
    print("Minimum Execution Time: "+str(min(executiontimes))+", Config: "+headings[np.argmin(executiontimes)])
    print("All Configs: ", np.argwhere(executiontimes == np.amin(executiontimes))[0][0])

base_path = '/home/vibhatha/github/smo/SMO/logs/'
data_source = 'a9a'
exp_id = '1'
output_base = 'execution/'+data_source+'/'
method1(base_path=base_path, data_source=data_source, exp_id=exp_id, output_base=output_base)
