#!/usr/bin/bash

# The goal of this script is to make easy for create subjects' posts.
#
# The first parameter is the class name. e.g: "Introduction to Software Engineer"
#
# The second parameter is the category (or subject). e.g: For subject "APS" in the 2015.1 semester,
# the default category is "aps20151" (lower case, without dots and spaces)

create_date() {
	date=$(date +"%Y-%m-%d")
	echo $date
}

create_timestamp() {
	timestamp=$(date +"%Y-%m-%d %k:%M:%S")
	echo $timestamp
}

format_classname() {
	newformat=$(echo "$1" | tr ' ' '-')
	echo $newformat
}

#Parameters
p_classname=$1
p_category=$2

#Main
date=$(create_date)
classname=$(format_classname "$p_classname")
filename="$date-$classname.md"
timestamp=$(create_timestamp)

#Creating file with template
echo "Creating file $filename..."
touch "$filename"
script_path=$(readlink -f "$0")
template_path=$(dirname $script_path)
cat "$template_path/subject-newpost-template.txt" > "$filename"

#Replacing placeholders on new file
echo "Replacing placeholders on new post..."
sed -i "s/template_title/$classname/g" "$filename"
sed -i "s/template_date/$timestamp/g" "$filename"
sed -i "s/template_p_category/$p_category/g" "$filename"

echo "Moving to the right folder ($p_category)..."
# Creating directory (if it doesn't exists) and moving the new post
mkdir -p "_posts/$p_category/"; mv $filename "_posts/$p_category/" 

exit 0
