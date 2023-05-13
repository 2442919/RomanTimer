#!/bin/bash
#             XX.V.MMXXIII.AC DECEBAL.V.NISIPEANU.
#                ,___,                                                                                                
#               n o,0 ne          "Roman Timer"                                                                       
#  Powered by:   /)#)                                                                                               
#================="="========================================USAGE: watch -tn 1.0 ./roman.timer.sh=====================
hrs=$(date +%H)                                                                                                                             #hrs
min=$(date +%M)                                                                                                                             #min
sec=$(date +%S)                                                                                                                             #sec
nas=$(date +%N)                                                                                                                             #nano
dom=$(date +%d)                                                                                                                             #day of mon
dow=$(date +%w)                                                                                                                             #day of wee
won=$(date +%U)                                                                                                                             #no. of wee
mon=$(date +%m)                                                                                                                             #no. of mon
doy=$(date +%j)                                                                                                                             #day of yr
noy=$(date +%Y)                                                                                                                             #no. of yr
#=======================================================================================================================
dim=$(((10#$hrs * 60) + 10#$min))                                                                                                           #day expr in min 
dis=$(((10#$dim * 60) + 10#$sec))                                                                                                           #day expr in sec
did=$((10#$dis / 240))                                                                                                                      #day expr in deg
#========================================================================================================================
yim=$(((10#$doy * 1440) + 10#$dim))                                                                                                         #yr expr in min
yis=$(((10#$doy * 86400) + 10#$dis))                                                                                                        #yr expr in sec
yih=$(((10#$doy * 24) + 10#$hrs))                                                                                                           #yr expr in hrs
##########################################################################################################################
diss=$((10#$dis / 2))                                                                                                                       #day expr in sum sec
dism=$((10#$diss / 60))                                                                                                                     #day expr in sum min
dish=$((10#$dism / 60))                                                                                                                     #day expr in sum hrs
sm=$((10#$dism - (10#$dish * 60)))                                                                                                          #sum min
ss=$((10#$diss - (10#$dism * 60)))                                                                                                          #sum sec
#########################################################################################################################
echo "$hrs" > hour.txt 
sed 's/01/I/g;s/02/II/g;s/03/III/g;s/04/IV/g;s/05/V/g;s/06/VI/g;s/07/VII/g;s/08/VIII/g;s/09/IX/g;s/10/X/g;s/11/XI/g;s/12/XII/g;s/13/XIII/g;s/14/XIV/g;s/15/XV/g;s/16/XVI/g;s/17/XVII/g;s/18/XVIII/g;s/19/XIX/g;s/20/XX/g;s/21/XXI/g;s/22/XXII/g;s/23/XXIII/g;s/24/XXIV/g' hour.txt > hour1.txt
roman_h=$(cat hour1.txt)  
echo "$min" > minutes.txt
sed 's/01/I/g;s/02/II/g;s/03/III/g;s/04/IV/g;s/05/V/g;s/06/VI/g;s/07/VII/g;s/08/VIII/g;s/09/IX/g;s/10/X/g;s/11/XI/g;s/12/XII/g;s/13/XIII/g;s/14/XIV/g;s/15/XV/g;s/16/XVI/g;s/17/XVII/g;s/18/XVII/g;s/19/XIX/g;s/20/XX/g;s/21/XXI/g;s/22/XXII/g;s/23/XXIII/g;s/24/XXIV/g;s/25/XXV/g;s/26/XXVI/g;s/27/XXVII/g;s/28/XXVIII/g;s/29/XXIX/g;s/30/XXX/g;s/31/XXXI/g;s/32/XXXII/g;s/33/XXXIII/g;s/34/XXXIV/g;s/35/XXXV/g;s/36/XXXVI/g;s/37/XXXVII/g;s/38/XXXVIII/g;s/39/XXXIX/g;s/40/XL/g;s/41/XLI/g;s/42/XLII/g;s/43/XLIII/g;s/44/XLIV/g;s/45/XLV/g;s/46/XLVI/g;s/47/XLVII/g;s/48/XLVIII/g;s/49/XLIX/g;s/50/L/g;s/51/LI/g;s/52/LII/g;s/53/LIII/g;s/54/LIV/g;s/55/LV/g;s/56/LVI/g;s/57/LVII/g;s/58/LVIII/g;s/59/LIX/g;s/00/LX/g' minutes.txt > minutes1.txt
roman_m=$(cat minutes1.txt)
echo "$sec" > secundes.txt
sed 's/01/I/g;s/02/II/g;s/03/III/g;s/04/IV/g;s/05/V/g;s/06/VI/g;s/07/VII/g;s/08/VIII/g;s/09/IX/g;s/10/X/g;s/11/XI/g;s/12/XII/g;s/13/XIII/g;s/14/XIV/g;s/15/XV/g;s/16/XVI/g;s/17/XVII/g;s/18/XVII/g;s/19/XIX/g;s/20/XX/g;s/21/XXI/g;s/22/XXII/g;s/23/XXIII/g;s/24/XXIV/g;s/25/XXV/g;s/26/XXVI/g;s/27/XXVII/g;s/28/XXVIII/g;s/29/XXIX/g;s/30/XXX/g;s/31/XXXI/g;s/32/XXXII/g;s/33/XXXIII/g;s/34/XXXIV/g;s/35/XXXV/g;s/36/XXXVI/g;s/37/XXXVII/g;s/38/XXXVIII/g;s/39/XXXIX/g;s/40/XL/g;s/41/XLI/g;s/42/XLII/g;s/43/XLIII/g;s/44/XLIV/g;s/45/XLV/g;s/46/XLVI/g;s/47/XLVII/g;s/48/XLVIII/g;s/49/XLIX/g;s/50/L/g;s/51/LI/g;s/52/LII/g;s/53/LIII/g;s/54/LIV/g;s/55/LV/g;s/56/LVI/g;s/57/LVII/g;s/58/LVIII/g;s/59/LIX/g;s/00/LX/g' secundes.txt > secundes1.txt
roman_s=$(cat secundes1.txt)
echo " "
########################################################################################################################usage: < watch -tn 1.0 ./roman_timer.sh >
echo " Roman Format   : [ $roman_h:$roman_m:$roman_s ] "
echo " " 
echo " Universal Time : [ $hrs:$min:$sec ] "
rm -rf hour.txt hour1.txt minutes.txt minutes1.txt secundes.txt secundes1.txt
