partitions=$1
#python libsvmformatter/corelationmapper.py ~/data/libsvm/webspam/webspam_csv plot/webspam_r_coff_1.png plot/webspam_p_coff_1.png webspam data/model_partition/
#python libsvmformatter/libsvm2Isesvm.py data/model_partition/webspam/positive/webspam_positive_cr_isesvm data/model_partition/webspam/positive/webspam_positive_cr_isesvm True 0.6
#python libsvmformatter/libsvm2Isesvm.py data/model_partition/webspam/negative/webspam_negative_cr_isesvm data/model_partition/webspam/negative/webspam_negative_cr_isesvm True 0.6
mv data/model_partition/webspam/positive/webspam_positive_cr_isesvm_test_x data/model_partition/webspam/positive/webspam_positive_cr_isesvm_test_x_bin
mv data/model_partition/webspam/positive/webspam_positive_cr_isesvm_train_x data/model_partition/webspam/positive/webspam_positive_cr_isesvm_train_x_bin
mv data/model_partition/webspam/negative/webspam_negative_cr_isesvm_train_x data/model_partition/webspam/negative/webspam_negative_cr_isesvm_train_x_bin
mv data/model_partition/webspam/negative/webspam_negative_cr_isesvm_test_x data/model_partition/webspam/negative/webspam_negative_cr_isesvm_test_x_bin
mv data/model_partition/webspam/negative/webspam_negative_cr_isesvm_test_y data/model_partition/webspam/negative/webspam_negative_cr_isesvm_test_y.bin
mv data/model_partition/webspam/negative/webspam_negative_cr_isesvm_train_y data/model_partition/webspam/negative/webspam_negative_cr_isesvm_train_y.bin
mv data/model_partition/webspam/positive/webspam_positive_cr_isesvm_train_y data/model_partition/webspam/positive/webspam_positive_cr_isesvm_train_y.bin
mv data/model_partition/webspam/positive/webspam_positive_cr_isesvm_test_y data/model_partition/webspam/positive/webspam_positive_cr_isesvm_test_y.bin
python libsvmformatter/partition.py data/model_partition/webspam/positive/webspam_positive_cr_isesvm_test_x_bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/positive/webspam_positive_cr_isesvm_train_x_bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/negative/webspam_negative_cr_isesvm_train_x_bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/negative/webspam_negative_cr_isesvm_test_x_bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/negative/webspam_negative_cr_isesvm_test_y.bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/negative/webspam_negative_cr_isesvm_train_y.bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/positive/webspam_positive_cr_isesvm_train_y.bin ${partitions}
python libsvmformatter/partition.py data/model_partition/webspam/positive/webspam_positive_cr_isesvm_test_y.bin ${partitions}
