#! /bin/bash                                                                    

for filename in ` cat filelistsps`;do
    echo $filename
    ./CalBgoDyCoe_job ./${filename} >&dysps
done
