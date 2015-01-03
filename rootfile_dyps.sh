#! /bin/bash                                                                    

for filename in ` cat filelistps`;do
    echo $filename
    ./CalBgoDyCoe_job ./${filename} >&dyps
done
