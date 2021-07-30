#!/bin/sh

rm novelAttraction.html
printf "<html>\n" >> novelAttraction.html
printf "<TITLE>Novel Attraction</TITLE>\n" >> novelAttraction.html
printf "<body><center>\n" >> novelAttraction.html
printf "<u><h2>Novel_Attraction</h2></u>\n" >> novelAttraction.html
printf "<img src="Novel_Attraction/slide.jpg"><h3>Categories</h3>\n" "$folder" >> novelAttraction.html

for folder in $(find Novel_Attraction -maxdepth 1 -type d); do
fldr="$(printf "$folder" | cut -d "/" -f 2-)"
if [ "${fldr}" != "Novel_Attraction" ]; then
	rm ${fldr}.html
	printf "<html>\n" >> ${fldr}.html
	printf "<TITLE>Novel Attraction</TITLE>\n" >> ${fldr}.html
	printf "<body><center>\n" >> ${fldr}.html
IFS='
'
	printf "<img src="Novel_Attraction/slide.jpg"><h2>%s</h2>\n" "$folder" >> ${fldr}.html
		for file in $(find $folder -type f); do >> ${fldr}.html
			printf "<a href=\"%s\">%s</a><br>\n" "$file" "$(printf "%s""$file" | cut -d "/" -f 2-)" >> ${fldr}.html
		done
	printf "</center></body>\n" >> ${fldr}.html
	printf "</html>\n" >> ${fldr}.html

	printf "<a href=\"%s.html\">%s</a><br>\n" "${fldr}" "$fldr" >> novelAttraction.html
fi
	done

printf "<br><img src="Novel_Attraction/slide.jpg"><h3>Unsorted</h3>\n" >> novelAttraction.html
for file in $(find Novel_Attraction -maxdepth 1 -type f); do >> novelAttraction.html
	printf "<a href=\"%s\">%s</a><br>\n" "$file" "$(printf "%s""$file" | cut -d "/" -f 2-)" >> novelAttraction.html
done

printf "<hr><br>Copyright (C) 2021 J05HYYY</center>\n" >> novelAttraction.html

printf "</body>\n" >> novelAttraction.html
printf "</html>\n" >> novelAttraction.html
