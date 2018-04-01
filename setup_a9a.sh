#TRAIN
python libsvmformatter/libsvm2csv.py /home/vibhatha/data/libsvm/a9a/a9a.svm /home/vibhatha/data/libsvm/a9a/a9a_csv 123
python libsvmformatter/libsvm2Isesvm.py /home/vibhatha/data/libsvm/a9a/a9a_csv /home/vibhatha/data/libsvm/a9a/a9a_isesvm False
mv /home/vibhatha/data/libsvm/a9a/a9a_isesvm_y /home/vibhatha/data/libsvm/a9a/a9a_isesvm_train_y.bin
mv /home/vibhatha/data/libsvm/a9a/a9a_isesvm_x /home/vibhatha/data/libsvm/a9a/a9a_isesvm_train_x_bin
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/a9a/a9a_isesvm_train_x_bin 100
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/a9a/a9a_isesvm_train_y.bin 100
#TEST
python libsvmformatter/libsvm2csv.py /home/vibhatha/data/libsvm/a9a/a9a.t.svm /home/vibhatha/data/libsvm/a9a/a9a_test_csv 123
python libsvmformatter/libsvm2Isesvm.py /home/vibhatha/data/libsvm/a9a/a9a_test_csv /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test False
mv /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test_y /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test_y.bin
mv /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test_x /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test_x_bin
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test_x_bin 100
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/a9a/a9a_isesvm_test_y.bin 100


