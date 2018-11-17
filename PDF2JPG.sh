
#!/bin/sh

##############################################################################
####
#### Convert PDFs to JPEGs using the Poppler library and ImageMagick
####
#### This script converts a folder full of PDFs to JPEGs using libpoppler and 
#### ImageMagick. In this case, PDFs are coverted at 150 dpi and outputted as
#### 85 percent quality JPEGs with a maximum width of 800 pixels. Edit these 
#### values to suit your environment.
####
#### To use the script, ensure the script is executable and navigate to a folder
#### of PDFs in the terminal and run: ./pdf2jpg.sh
#### 
#### By: Cody Eding (cody@codyeding.com)
####
##############################################################################
mkdir Images
for i in *.pdf; do
	filename=$(basename $i)
	echo $filename
	pdftoppm -r 150 $i > $filename.ppm
	convert  $filename.ppm > $filename.jpg
	pnmtojpeg -quality 100 $filename.ppm > $filename.jpg
	rm $filename.ppm
	sudo mv $filename.jpg Images/
	#convert -quality 85% -resize '>800' $filename.jpg $filename.jpg
done

exit
