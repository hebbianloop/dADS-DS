#!/bin/bash
#
# Create an ADS dummy directory in BIDs format

numsubs=10 # 4 exclusions @ baseline
numsess=3  # 3 time points
dummydirname='./dADS-DS'
anats="T1w"
funcs="rest gonogo emostroop wof"
dwis="dwi"

# Create Tree
for numsub in $(seq 1 $numsubs); do
	for numses in $(seq 1 $numsess); do
		# Make Behavior 
		mkdir -p $(printf "$dummydirname/sub-%.3d/ses-%.3d/beh/" $numsub $numses)
		behfile=$(printf "$dummydirname/sub-%.3d/ses-%.3d/beh/sub-%.3d_sess-%.3d_behavior.json" $numsub $numses)
		source create-dummy-dataset.sh  "$(printf "sub-%.3d" $numsub)" "$(printf "ses-%.3d" $numses)" $behfile
		# Make Anats
		for anat in $anats; do
			mkdir -p $(printf "$dummydirname/sub-%.3d/ses-%.3d/anat/" $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/anat/sub-%.3d_ses-%.3d_$anat.nii.gz" $numsub $numses $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/anat/sub-%.3d_ses-%.3d_$anat.json" $numsub $numses $numsub $numses)			
		done
		# Make Funcs
		for func in $funcs; do
			mkdir -p $(printf "$dummydirname/sub-%.3d/ses-%.3d/func/" $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/func/sub-%.3d_ses_task-%.3d_$func_bold.nii.gz" $numsub $numses $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/func/sub-%.3d_ses_task-%.3d_$func_bold.json" $numsub $numses $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/func/sub-%.3d_ses_task-%.3d_$func.tsv" $numsub $numses $numsub $numses)			
		done
		# Make DWIs
		for dwi in $dwis; do
			mkdir -p $(printf "$dummydirname/sub-%.3d/ses-%.3d/dwi/" $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/dwi/sub-%.3d_ses-%.3d_$dwi.nii.gz" $numsub $numses $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/dwi/sub-%.3d_ses-%.3d_$dwi.bval" $numsub $numses $numsub $numses)
			touch $(printf "$dummydirname/sub-%.3d/ses-%.3d/dwi/sub-%.3d_ses-%.3d_$dwi.bvec" $numsub $numses $numsub $numses)			
		done
	done
done
# Populate Root
mkdir -p "$dummydirname/code"
