import pandas as pd
import numpy as np
import os
import csv
import glob

def update_filecontent():
    path = 'accuracy/ijcnn1/data/*'  # use your path
    allFiles = glob.glob(path)
    for filename in allFiles:
        f = open(filename, 'r+')
        lines = f.readlines()  # read old content
        if(lines[0] != 'Accuracy\n'):
            f.seek(0)  # go back to the beginning of the file
            f.write("Accuracy\n")  # write new content at the beginning
            for line in lines:  # write old content after new
                f.write(line)
            f.close()

def method1():
    path = 'accuracy/ijcnn1/data/*'  # use your path
    allFiles = glob.glob(path)
    print(allFiles)
    frame = pd.DataFrame()
    list_ = []
    for file_ in allFiles:
        df = pd.read_csv(file_)
        list_.append(df)
    frame = pd.concat(list_)
    print(frame)


def method2():
    # reads all csvs concatenate into one with header names based on gamma and C values
    base_path='accuracy/ijcnn1/data/'
    files = os.listdir(base_path)
    filepaths=[]
    dfs=[]
    headings=[]
    for name in files:
        filepaths.append(name)
        part = str.split(name,"__")
        headings.append(part[1])
        df = pd.read_csv(base_path+name)
        dfs.append(df)
    frame = pd.concat(dfs,axis=1)
    output = 'accuracy/ijcnn1/output/out.csv'
    frame.to_csv(output)
    print(headings)
    headerline='Exp Info,'
    size = len(headings)
    count = 0
    for item in headings:
        if(count<size-1):
            headerline+= item+","
        if(count == size-1):
            headerline += item + "\n"

    f = open(output, 'r+')
    lines = f.readlines()  # read old content
    lines.pop(0)  # go back to the beginning of the file
    lines.pop(len(lines)-1)
    f.seek(0)
    f.write(headerline+"\n")  # write new content at the beginning
    for line in lines:  # write old content after new
        f.write(line)
    f.close()


def method3(base_path, output):
    # reads the overall accuracies and calculate the average per sample
    # write to csv file

    files = os.listdir(base_path)
    filepaths=[]
    dfs=[]
    headings=[]
    averages = []
    for name in files:
        filepaths.append(name)
        part = str.split(name,"__")
        #print(part)
        headings.append(part[1])
        df = pd.read_csv(base_path+name)
        values = df.get_values()
        averages.append((sum(values)/len(values))[0])

    averages_str =''
    cnt_avg=0
    size_avg = len(averages)

    #print(headings)
    headerline='Exp Info, Average Accuracy Per Partition\n'
    size = len(headings)
    count = 0
    for avg, item in zip(averages, headings):
        averages_str+= str(item)+','+str(avg)+"\n"

    #print(averages_str)
    file = open(output, 'wb')
    file.write(headerline)
    file.write(averages_str)
    print("Maximum Average: "+str(max(averages))+", Config: "+headings[np.argmax(averages)] )
    print("All Configs: ", np.argwhere(averages == np.amax(averages)))



#update_filecontent()
data_source='a9a'
base_path = '/home/vibhatha/github/smo/SMO/stats/accuracyPerDataSet/single/'+data_source+'/1/'
print(base_path)
method3(base_path=base_path,output='accuracy/'+data_source+'/output/avg_accuracies_1.csv')
