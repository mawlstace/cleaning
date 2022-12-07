for p in /test1/repos/*/ ; do # set the directory 
    (
        cd $p  # cd to the directory 
        /test1/script/test.sh # run the script ## 
    )
done

## because () is a sub shell ## 
