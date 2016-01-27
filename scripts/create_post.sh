#!/bin/bash
# File name: create_post.sh

source ./config.conf

cd $blog_location/_posts

echo -e "Enter the title of the new post: "

read title

echo -e "Enter the sub headline: "

read subheadline

echo -e "Enter some categories. Type it as one long list of items separated by commas e.g. cat1,cat2,cat3 NOT cat1, cat2, cat3: "

read categories

IFS=","

title_ed=$(echo $title|sed 's/ /_/g')

file=`date +"%Y-%m-%d"`-$title_ed.$filetype

touch $file

echo -e "---
        \n
        layout: page-fullwidth
        \n
        title: $title
        \n
        subheadline: $subheadline
        \n
        categories:
        `for v in $categories
            do
	           echo -e "- $v"
        done`
        \n
        header:
        \n
        ---
        \n" > $file

$editor $file

cd $blog_location

echo -e "Enter a commit message: "

read commitm

git add --all

git commit -m "$commitm"

git push origin master

echo -e "File created @ $blog_location/_posts$file"