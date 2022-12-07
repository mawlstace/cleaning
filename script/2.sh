echo date 
for p in /test1/repos/*/  ; do # directory that i want to run the script on without copy it # 
   pushd $p  # go to the directory #
   # run the script #
   /cleaning/script/cleaning.sh
   popd  # return back # 
done
