#!/bin/bash
#
# Create an ADS dummy directory in BIDs format

numsubs=142 # 4 exclusions @ baseline
numsess=3  # 3 time points
dummydirname='./dADS-DS'
anats="T1w"
funcs="rest gonogo emostroop wof"
dwis="dwi"
# Populate Root
mkdir -p "$dummydirname/code"
touch $dummydirname/participants.tsv
echo -e "SubjectID\tW1-Use\tW2-Use\tW3-Use\tGender\tRace\tSES\tAge@V1\tAge@V2\tAge@V3\tAge@V4\tAge@V5\tAge@V6\tNeverUser\tHeight(m)\tWeight(kg)\tBMI\tBMI-Zscored\tBMI-Category\tPubertalDevelopmentScale\tGentotype-CRHR1_rs1104\tGenotype-DRD2_rs6277\tGABAR2_rs279826\tOPRM1_rs1799971\tDAT_Repeats_rs28363170" >> $dummydirname/participants.tsv
touch $dummydirname/dataset_description.json
touch $dummydirname/README.md
touch $dummydirname/CHANGES

# Create Tree
for numsub in $(seq 1 $numsubs); do
	subjectname=$(printf "sub-%.3d" $numsub)
	for numses in $(seq 1 $numsess); do
		sesname=$(printf "ses-%.3d" $numses)
		# Make Behavior 
		mkdir -p "$dummydirname/$subjectname/$sesname/beh/"
		behfile=$(printf "$dummydirname/$subjectname/$sesname/beh/$subjectname"_"$sesname"_"behavior.json" $numsub $numses)
		source create-dummy-beh-json.sh  $subjectname $sesname $behfile
		# Make Anats
		for anat in $anats; do
			mkdir -p "$dummydirname/$subjectname/$sesname/anat/"
			touch $(printf "$dummydirname/$subjectname/$sesname/anat/sub-%.3d_ses-%.3d_$anat.nii.gz" $numsub $numses)
			touch $(printf "$dummydirname/$subjectname/$sesname/anat/sub-%.3d_ses-%.3d_$anat.json" $numsub $numses)			
		done
		# Make Funcs
		for func in $funcs; do
			mkdir -p "$dummydirname/$subjectname/$sesname/func/"
			touch $(printf "$dummydirname/$subjectname/$sesname/func/sub-%.3d_ses_task-%.3d_$func_bold.nii.gz" $numsub $numses)
			touch $(printf "$dummydirname/$subjectname/$sesname/func/sub-%.3d_ses_task-%.3d_$func_bold.json" $numsub $numses)
			touch $(printf "$dummydirname/$subjectname/$sesname/func/sub-%.3d_ses_task-%.3d_$func.tsv" $numsub $numses)			
		done
		# Make DWIs
		for dwi in $dwis; do
			mkdir -p "$dummydirname/$subjectname/$sesname/dwi/"
			touch $(printf "$dummydirname/$subjectname/$sesname/dwi/sub-%.3d_ses-%.3d_$dwi.nii.gz" $numsub $numses)
			touch $(printf "$dummydirname/$subjectname/$sesname/dwi/sub-%.3d_ses-%.3d_$dwi.bval" $numsub $numses)
			touch $(printf "$dummydirname/$subjectname/$sesname/dwi/sub-%.3d_ses-%.3d_$dwi.bvec" $numsub $numses)			
		done
	done
	# Append to participants file
	echo "$numsub\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tFOO\tBAR" >> $dummydirname/participants.tsv
done
