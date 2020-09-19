#!/bin/bash

# grab all the volumes from the 64mT segmentations
cd /Users/preya/Desktop/hyperfine/analysis/results_from_borel/all_segs/64mT_N40_1mm_linear

for folder in */; do
	echo $folder
	cd $folder
	ims=$(find *_OASIS_weightierSegmentation.nii.gz)
	rm *segvols*.csv
	for im in $ims; do
		im_basename=${im%???????????????????????????????????}
		#echo $im_basename
		
        	#filename="${im_basename}_segvols_ADNI.csv"	
		#rm $filename
		#echo $im_basename > $filename
		#c3d ${im_basename}Segmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

		#filename="${im_basename}_segvols_MNI_weightier.csv"
		#rm $filename
		#echo $im_basename > $filename
                #c3d ${im_basename}_MNISegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 21 >> $filename
		
		#filename="${im_basename}_segvols_OASIS.csv"
	 	#rm $filename
		#echo $im_basename > $filename
                #c3d ${im_basename}_OASISSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

	        filename="${im_basename}_segvols_OASIS_weightier.csv"
		rm $filename
		echo $im_basename > $filename
        	c3d ${im_basename}_OASIS_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

        	#filename="${im_basename}_segvols_newMNI.csv"
		#rm $filename
        	#echo $im_basename > $filename
        	#c3d ${im_basename}_newMNISegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

        	#filename="${im_basename}_segvols_newMNI_weightier.csv"
        	#rm $filename
		#echo $im_basename > $filename
        	#c3d ${im_basename}_newMNI_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

                filename="${im_basename}_segvols_NKI_weightier.csv"
                rm $filename
                echo $im_basename > $filename
                c3d ${im_basename}_NKI_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename

                filename="${im_basename}_segvols_Kirby_weightier.csv"
                rm $filename
                echo $im_basename > $filename
                c3d ${im_basename}_Kirby_weightierSegmentation.nii.gz -dup -lstat | awk '{print $7}' | tail -n 6 >> $filename
	done
	cd ..
done

#all_segvol_files=$(find */*segvols_ADNI.csv)
#paste -d, $all_segvol_files > all_segvols_ADNI.csv

#all_segvol_files=$(find */*segvols_MNI_weightier.csv)
#paste -d, $all_segvol_files > all_segvols_MNI_weightier.csv

all_segvol_files=$(find */*segvols_NKI_weightier.csv)
paste -d, $all_segvol_files > all_segvols_NKI_weightier.csv

all_segvol_files=$(find */*segvols_Kirby_weightier.csv)
paste -d, $all_segvol_files > all_segvols_Kirby_weightier.csv

#all_segvol_files=$(find */*segvols_OASIS.csv)
#paste -d, $all_segvol_files > all_segvols_OASIS.csv

all_segvol_files=$(find */*segvols_OASIS_weightier.csv)
paste -d, $all_segvol_files > all_segvols_OASIS_weightier.csv

#all_segvol_files=$(find */*segvols_newMNI.csv)
#paste -d, $all_segvol_files > all_segvols_newMNI.csv

#all_segvol_files=$(find */*segvols_newMNI_weightier.csv)
#paste -d, $all_segvol_files > all_segvols_newMNI_weightier.csv
