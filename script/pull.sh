## cp the script for everysub directory to do the pull and delete branches 
#for d in /home/admin1/Desktop/test/test/  do cp test-script/test.sh  "$d"

## pull all repos

curl -s https://api.github.com/users/mawlsta/repos?per_page=100 | ruby -rjson -e 'JSON.load(STDIN.read).each {|repo| %x[git clone #{repo["clone_url"]} ]}' 
source /home/admin1/Desktop/test/test/
