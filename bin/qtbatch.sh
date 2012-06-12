#!/bin/bash

for i in `ls {*.mp4,*.MP4}`
  do j=${i%.*}; 
  if [[ -n "$1" && "$1" == "--newsuffix" && -n "$2" ]]
    then
      newfile="${j}${2}.mp4"
  else
    newfile="$i"
  fi
  #sudo qtfaststart "$i" "$newfile"
  echo "$newfile"; 
done
