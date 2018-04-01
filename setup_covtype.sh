python libsvmformatter/libsvm2csv.py /home/vibhatha/data/libsvm/covtype/covtype.svm /home/vibhatha/data/libsvm/covtype/covtype_csv 54
python libsvmformatter/libsvm2Isesvm.py /home/vibhatha/data/libsvm/covtype/covtype_csv /home/vibhatha/data/libsvm/covtype/covtype_isesvm
python libsvmformatter/libsvm2Isesvm.py /home/vibhatha/data/libsvm/covtype/covtype_csv /home/vibhatha/data/libsvm/covtype/covtype_isesvm True 0.6
python libsvmformatter/binaryconverter.py /home/vibhatha/data/libsvm/covtype/covtype_isesvm_train_y /home/vibhatha/data/libsvm/covtype/covtype_isesvm_train_y.bin
python libsvmformatter/binaryconverter.py /home/vibhatha/data/libsvm/covtype/covtype_isesvm_test_y /home/vibhatha/data/libsvm/covtype/covtype_isesvm_test_y.bin
mv /home/vibhatha/data/libsvm/covtype/covtype_isesvm_train_x /home/vibhatha/data/libsvm/covtype/covtype_isesvm_train_x_bin
mv /home/vibhatha/data/libsvm/covtype/covtype_isesvm_test_x /home/vibhatha/data/libsvm/covtype/covtype_isesvm_test_x_bin
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/covtype/covtype_isesvm_train_x_bin 500
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/covtype/covtype_isesvm_test_x_bin 500
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/covtype/covtype_isesvm_test_y.bin 500
python libsvmformatter/partition.py /home/vibhatha/data/libsvm/covtype/covtype_isesvm_train_y.bin 500
