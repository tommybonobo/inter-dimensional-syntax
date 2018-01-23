spinner_loading() {
  pid=$!
  spin='━\|/'
  i=0
  while kill -0 $pid 2>/dev/null
  do
      i=$(( (i+1) %4 ))
      printf "\r[${spin:$i:1}] Please wait..."
      sleep .1
  done
}

# parse out everything
cat $file | sed '1d;$d' | sed 's/ <!.*//' | awk '/<row>/{x=i++".part";}{print > x}'
numbers=(`cat $file | sed "s/\s+//g" | sed "s/|/=/g" | sed "s/&/=/g" | grep 'condition type' | cut -d "\"" -f 4 | cut -d "=" -f3 | awk '{print length()}'`)
rm -rf profile.xml
max=${numbers[0]}

# iterate through the array
string=(`cat tmp.less | grep ";" | cut -d ":" -f1 | tr -d "@"`)
size=${#string[@]}
declare -a count=()
for ((i=1; i<=size; i++))
do
  count+=( "$(echo ${string[$i]} | wc -c)" )
done
IFS=$'\n' sorted=($(sort <<<"${count[*]}"))
unset IFS
min=${sorted[1]}
max=${sorted[-1]}
delta=$((max-min))
