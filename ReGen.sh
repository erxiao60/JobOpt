#! /bin/bash                                                                    

##for filename in ` cat test.log`;do
#for filename in ` cat filelistps`;do
    ##if [[ $filename =~ "TODO" ]]; then
    ##	echo $lastfile
#	filename1=`echo ${filename/TODO/\/} `
#        echo $filename1
    ##fi
  ##  lastfile=$filename
    #./CalBgoDyCoe_job ./${filename} >&dyps
##done


#for filename in ` cat test.log`;do
cat "test.log" | while read filename;do
#for filename in ` cat filelistps`;do
    if [[ $filename =~ "TODO" ]]; then
    	#echo $lastfile
    	#echo $filename
	filename1=`echo ${filename/TODO/} `
        echo $filename1
        ./BT_Job_0-Raw2Root ./binary/${filename1} >&RawLog
    fi
 #   lastfile=$filename
    #./CalBgoDyCoe_job ./${filename} >&dyps
done
