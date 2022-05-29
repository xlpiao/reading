INPUT_FILE=reading.csv
OUTPUT_FILE=README.md

echo -e "# [Keep reading! There's another world in books!](https://github.com/xlpiao/reading/blob/master/reading.csv)\n" > $OUTPUT_FILE

INPUT_HEADER=true
while read INPUT; do
  if $INPUT_HEADER;then
    echo -e "| ${INPUT//,/ | } |" >> $OUTPUT_FILE ;
    echo -e "| --- | --- | --- | --- | --- | --- | --- |" >> $OUTPUT_FILE
    INPUT_HEADER=false
    continue
  fi
  echo -e "| ${INPUT//,/ | } |" >> $OUTPUT_FILE ;
done < $INPUT_FILE;
