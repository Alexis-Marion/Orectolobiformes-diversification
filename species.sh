mkdir Datasets/Species/5_MA_bins_EP
cp Datasets/Species/Occ_sp_Squali_PyRate.py Datasets/Species/5_MA_bins_EP/Occ_sp_Squali_PyRate.py
echo "python PyRate/PyRate.py  Datasets/Species/5_MA_bins_EP/Occ_sp_Squali_PyRate.py -fixShift epochs_rate_shift_5_MA.txt -j \$1 -qShift epochs_preservation_sp.txt -mG -n 20000000 -s 20000 -N 140" > tmp_script.sh
		parallel -j 20 bash tmp_script.sh ::: {1..20}

mkdir Datasets/Species/5_MA_bins_EXT_EP
cp Datasets/Species/Occ_sp_Squali_PyRate.py Datasets/Species/5_MA_bins_EXT_EP/Occ_sp_Squali_PyRate.py
echo "python PyRate/PyRate.py  Datasets/Species/5_MA_bins_EXT_EP/Occ_sp_Squali_PyRate.py -fixShift epochs_rate_shift_5_MA_crisis.txt -j \$1 -qShift epochs_preservation_sp.txt -mG -n 20000000 -s 20000 -N 140" > tmp_script.sh
		parallel -j 20 bash tmp_script.sh ::: {1..20}