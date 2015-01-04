#! /bin/bash

filename=`ls -t ./binary | head -1`
if [[ $filename == *-* ]];then
  newfilename=${filename/-/_}
  echo "====>  moving $filename to $newfilename"
  mv ./binary/$filename ./binary/$newfilename
fi


filename=`ls -t ./binary | head -1`
echo "====>  Processing Rdc $filename"
./BT_Job_0-Raw2Root ./binary/${filename}

filename=`ls -t ./RawROOT | head -1`
echo "====>  Processing Dynode relation $filename"
./CalBgoDyCoe_job ./RawROOT/${filename}

echo "====>  Processing Raw2Hits $filename"
./BT_Job_1-2BgoHist ./RawROOT/${filename}

echo "====>  Processing Raw2Hits with header $filename"
./BT_Job_hits_Header ./RawROOT/${filename}


