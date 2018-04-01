partitions=$1
#python libsvmformatter/libsvm2csv.py ~/data/libsvm/a9a/a9a.svm ~/data/libsvm/a9a/a9a_train_csv 123
#python libsvmformatter/libsvm2csv.py ~/data/libsvm/a9a/a9a.t.svm ~/data/libsvm/a9a/a9a_test_csv 123
#python libsvmformatter/corelationmapper.py ~/data/libsvm/a9a/a9a_train_csv plot/a9a_train_r_coff_1.png plot/a9a_train_p_coff_1.png a9a data/model_partition/
#python libsvmformatter/corelationmapper.py ~/data/libsvm/a9a/a9a_test_csv plot/a9a_test_r_coff_1.png plot/a9a_test_p_coff_1.png a9a data/model_partition/

python libsvmformatter/libsvm2Isesvm.py data/model_partition/a9a/positive/a9a_positive_cr_isesvm data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train False
python libsvmformatter/libsvm2Isesvm.py data/model_partition/a9a/negative/a9a_negative_cr_isesvm data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train False
#mv data/model_partition/a9a/positive/a9a_positive_cr_isesvm_test_x data/model_partition/a9a/positive/a9a_positive_cr_isesvm_test_x_bin
#mv data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train_x data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train_x_bin
#mv data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train_x data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train_x_bin
#mv data/model_partition/a9a/negative/a9a_negative_cr_isesvm_test_x data/model_partition/a9a/negative/a9a_negative_cr_isesvm_test_x_bin
#mv data/model_partition/a9a/negative/a9a_negative_cr_isesvm_test_y data/model_partition/a9a/negative/a9a_negative_cr_isesvm_test_y.bin
#mv data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train_y data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train_y.bin
#mv data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train_y data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train_y.bin
#mv data/model_partition/a9a/positive/a9a_positive_cr_isesvm_test_y data/model_partition/a9a/positive/a9a_positive_cr_isesvm_test_y.bin
#python libsvmformatter/partition.py data/model_partition/a9a/positive/a9a_positive_cr_isesvm_test_x_bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train_x_bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train_x_bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/negative/a9a_negative_cr_isesvm_test_x_bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/negative/a9a_negative_cr_isesvm_test_y.bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/negative/a9a_negative_cr_isesvm_train_y.bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/positive/a9a_positive_cr_isesvm_train_y.bin ${partitions}
#python libsvmformatter/partition.py data/model_partition/a9a/positive/a9a_positive_cr_isesvm_test_y.bin ${partitions}
