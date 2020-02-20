#!/bin/bash

#make HigherElevation directory or show it already exists 
if [ -d "./HigherElevation" ]
then 
	echo "Directory already exists"
else
	mkdir ./HigherElevation
fi 

#Store .txt files with elevation data >200 ft to the HigherElevation directory 
for file in ./StationData/*
do  
	f=`basename "$file"`
	if
	grep 'Station Altitude: [>200]' $file
	then cp ./StationData/$f ./HigherElevation/$f
	fi
done

#Get Long for all stations and store in Long.list
awk '/Longitude/ {print -1 * $NF}' StationData/Station_*.txt > Lon.list

#Get lat for all stations and store in Lat.list 
awk '/Latitude/ {print 1 * $NF}' StationData/Station_*.txt > Lat.list

#Get long for only high elevation stations and store in LonHiElev.list
awk '/Longitude/ {print -1 * $NF}' HigherElevation/Station_*.txt > LonHE.list

#Get lat for only high elevation stations and store in LatHiElev.list 
awk '/Latitude/ {print 1 * $NF}' HigherElevation/Station_*.txt > LatHE.list


#Paste longitudinal and latitudinal results from all stations  into 'AllStation.xy'-  
paste Lon.list Lat.list > AllStation.xy

#Paste longitudinal and latitudinal results from high elevation stations  into 'HEStation.xy' 
paste LonHE.list LatHE.list > HEStation.xy

#load generic mapping tool module
module load gmt 

#draws rivers, coastlines and political boundaries via GMT package
gmt pscoast -JU16/4i -R-93/-86/36/43 -B2f0.5 -Ia/blue -Na/orange -Cblue -Dhigh -A4 -P -K -V > SoilMoistureStations.ps

#adds small black circles for all station locations via GMT package
gmt psxy AllStation.xy -J -R -Sc0.15 -Gblack -K -O -V >> SoilMoistureStations.ps

#adds red circles for all higher elevation stations
gmt psxy HEStation.xy -J -R -Sc0.08 -Gred -O -V >> SoilMoistureStations.ps

#view resulting map and leave it running in background 
gv SoilMoistureStations.ps &

#Part 3 convert figure into other formats
#Convert .ps to .psi
ps2epsi SoilMoistureStations.ps SoilMoistureStations.epsi

#convert.psi to .tiff
convert -density 150x150  SoilMoistureStations.epsi SoilMoistureStations.tiff  

