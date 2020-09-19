#!/bin/bash

# grab all the volumes from the 3T segmentations
cd /Users/preya/Desktop/hyperfine/analysis/results_from_borel/all_segs/3T_new

for folder in */; do
	
	echo $folder
	folderbasename=${folder%???}
	echo $folderbasename
	cd $folder
        #rm segvols*
	#filename="segvols_ADNI.csv"	
	#echo $folder > $filename
	#c3d ${folderbasename}Segmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

	#filename="segvols_MNI.csv"
        #echo $folder > $filename
        #c3d ${folderbasename}_MNISegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 21 >> $filename

	#filename="segvols_OASIS.csv"
        #echo $folder > $filename
        #c3d ${folderbasename}_OASISSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename
	
	filename="segvols_OASIS_weightier.csv"
        echo $folder > $filename
        c3d ${folderbasename}_OASIS_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename
	
	filename="segvols_NKI_weightier.csv"
        echo $folder > $filename
        c3d ${folderbasename}_NKI_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

	filename="segvols_Kirby_weightier.csv"
        echo $folder > $filename
        c3d ${folderbasename}_Kirby_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

 	#filename="segvols_newMNI.csv"
        #rm $filename
	#echo $folder > $filename
        #c3d ${folderbasename}_newMNISegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename
	
	#filename="segvols_newMNI_weightier.csv"
        #rm $filename
	#echo $folder > $filename
        #≈c3d ${folderbasename}_newMNI_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

	cd ..
done

#all_segvol_files=$(find */segvols_ADNI.csv)
#paste -d, $all_segvol_files > all_segvols_ADNI.csv

#all_segvol_files=$(find */segvols_MNI.csv)
#paste -d, $all_segvol_files > all_segvols_MNI.csv

#all_segvol_files=$(find */segvols_OASIS.csv)
#paste -d, $all_segvol_files > all_segvols_OASIS.csv

all_segvol_files=$(find */segvols_OASIS_weightier.csv)
paste -d, $all_segvol_files > all_segvols_OASIS_weightier.csv

all_segvol_files=$(find */segvols_NKI_weightier.csv)
paste -d, $all_segvol_files > all_segvols_NKI_weightier.csv

all_segvol_files=$(find */segvols_Kirby_weightier.csv)
paste -d, $all_segvol_files > all_segvols_Kirby_weightier.csv

#all_segvol_files=$(find */segvols_newMNI.csv)
#paste -d, $all_segvol_files > all_segvols_newMNI.csv

#all_segvol_files=$(find */segvols_newMNI_weightier.csv)
#paste -d, $all_segvol_files > all_segvols_newMNI_weightier.csv
