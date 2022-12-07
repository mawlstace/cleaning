echo date 
for p in /test1/repos/*/  ; do # directory that i want to run the script on without copy it # 
   pushd $p  # go to the directory #
   /test1/script/test.sh # run the script #
   popd  # return back # 
done

