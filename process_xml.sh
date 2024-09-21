#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please provide an input file path."
    exit 1
fi

input_file="$1"

# Debug: Print the received file path
echo "Received file path: $input_file"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "File not found: $input_file"
    exit 1
fi

# Perform XML editing using your desired commands, e.g., using sed
# Replace 'example' with your actual editing logic
modified_content=$(sed 's/example/replacement/g' "$input_file")

# Output the modified XML content
echo "$modified_content"

# lazy copy command
# rm "$input_file"

# replace text to label variables
#sed -i '' 's/<Atrium which="left">/<AtriumLeft>/g' "$input_file"
#sed -i '' 's/Atrium which="right">/AtriumRight>/g' "$input_file"

#gsed '1#/Atrium>#s##/AtriumLeft>#' "$input_file" 

#gsed '1#/Atrium>#s##/AtriumLeft>#' "$input_file" 

#gsed 's/Atrium>/AtriumRight>/g3' "$input_file"

#perl -pe 'BEGIN{$n=2} 1 while s#</Atrium>#</AtriumLeft># && ++$i < $n' "$input_file"


#sed -i '' "0,#foo# s##bar#' <<<$'1st AtriumLeft\nUnrelated\n2nd AtriumLeft\n3rd AtriumRight" "$input_file"

#awk '!x{x=sub("Atrium","AtriumLeft")}0' "$input_file"

sed -i '' 's#/fonts#../fonts#' "$input_file"

#sed -i '' 's#/Atrium>#/AtriumLeft>#' "$input_file"


#sed -i '' 's/Atrium>/AtriumLeft>/' "$input_file"


#sed -i '' 's/Atrium which="right">/RightAtrium>/g' "$input_file"


#sed -i '' 's/Atrium>/RightAtrium>/' "$input_file"


sed -i '' 's/ahaSeg nb="/ahaSeg/g' "$input_file"
sed -i '' 's/" slice="0"//g' "$input_file"
sed -i '' 's/" slice="1"//g' "$input_file"
sed -i '' 's/" slice="2"//g' "$input_file"
sed -i '' 's/SAX_Global /SAX_Global/g' "$input_file"
sed -i '' 's/LAX_Global /LAX_Global/g' "$input_file"

sed -i '' 's/SAX_GlobalPeakStrainRadial/SAX_GlobalPeakStrainRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakStrainCircumferential/SAX_GlobalPeakStrainCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalTimeToPeakStrainRadial/SAX_GlobalTimeToPeakStrainRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalTimeToPeakStrainCircumferential/SAX_GlobalTimeToPeakStrainCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakSystolicStrainRateRadial/SAX_GlobalPeakSystolicStrainRateRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakSystolicStrainRateCircumferential/SAX_GlobalPeakSystolicStrainRateCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakDiastolicStrainRateRadial/SAX_GlobalPeakDiastolicStrainRateRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakDiastolicStrainRateCircumferential/SAX_GlobalPeakDiastolicStrainRateCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakDisplacementRadial/SAX_GlobalPeakDisplacementRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakDisplacementCircumferential/SAX_GlobalPeakDisplacementCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalTimeToPeakDisplacementRadial/SAX_GlobalTimeToPeakDisplacementRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalTimeToPeakDisplacementCircumferential/SAX_GlobalTimeToPeakDisplacementCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakSystolicVelocityRadial/SAX_GlobalPeakSystolicVelocityRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakSystolicVelocityCircumferential/SAX_GlobalPeakSystolicVelocityCircumferential val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakDiastolicVelocityRadial/SAX_GlobalPeakDiastolicVelocityRadial val/g' "$input_file"
sed -i '' 's/SAX_GlobalPeakDiastolicVelocityCircumferential/SAX_GlobalPeakDiastolicVelocityCircumferential val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakStrainRadial/LAX_GlobalPeakStrainRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakStrainLongitudinal/LAX_GlobalPeakStrainLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalTimeToPeakStrainRadial/LAX_GlobalTimeToPeakStrainRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalTimeToPeakStrainLongitudinal/LAX_GlobalTimeToPeakStrainLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakSystolicStrainRateRadial/LAX_GlobalPeakSystolicStrainRateRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakSystolicStrainRateLongitudinal/LAX_GlobalPeakSystolicStrainRateLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakDiastolicStrainRateRadial/LAX_GlobalPeakDiastolicStrainRateRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakDiastolicStrainRateLongitudinal/LAX_GlobalPeakDiastolicStrainRateLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakDisplacementRadial/LAX_GlobalPeakDisplacementRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakDisplacementLongitudinal/LAX_GlobalPeakDisplacementLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalTimeToPeakDisplacementRadial/LAX_GlobalTimeToPeakDisplacementRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalTimeToPeakDisplacementLongitudinal/LAX_GlobalTimeToPeakDisplacementLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakSystolicVelocityRadial/LAX_GlobalPeakSystolicVelocityRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakSystolicVelocityLongitudinal/LAX_GlobalPeakSystolicVelocityLongitudinal val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakDiastolicVelocityRadial/LAX_GlobalPeakDiastolicVelocityRadial val/g' "$input_file"
sed -i '' 's/LAX_GlobalPeakDiastolicVelocityLongitudinal/LAX_GlobalPeakDiastolicVelocityLongitudinal val/g' "$input_file"


new_file="${input_file%.xml}_edit.xml"

cp "$input_file" "$new_file"