input=reading.csv
output=README.md

echo -e "# [Keep reading! There's another world in books!](https://github.com/xlpiao/reading/blob/master/reading.csv)\n" > $output

skip_header=true
while read INPUT; do
  if $skip_header;then
    echo -e "| ${INPUT//,/ | } |" >> $output ;
    echo -e "| --- | --- | --- | --- | --- | --- | --- |" >> $output
    skip_header=false
    continue
  fi
  echo -e "| ${INPUT//,/ | } |" >> $output ;
done < $input;
