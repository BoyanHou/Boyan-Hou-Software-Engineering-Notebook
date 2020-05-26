author="Boyan Hou"
update="5/26/2020"

dlm_line="* * * * * * * * * * * * * * * * * * * * * * * * "
 
printf "############################\n"
printf "##   author: ${target_dir}  \n"
printf "##   update: ${date}        \n"
printf "############################\n"
echo
echo "This script is used for setting up a hack project;"
echo "It assumes you have already installed the following dependencies:"
echo "  1. composer.phar in your \$PATH"
echo "  2. hhvm"
echo

echo ${dlm_line}
echo "step1: making directories in project root..."
make dir src tests vendor
echo "  finished making dirs: src/"
echo "                        tests/"
echo "                        vendor/"
echo

echo ${dlm_line}
echo "step2: adding director \"vendor/\" to .gitignore"
echo vendor/ > .gitignore
echo "finished"
echo

echo ${dlm_line}
echo "step3: ignore paths \"vendor/./tests/.\" & \"vendor/./bin/.\" in .hhconfig to avoid naming collision for named entities"
echo "       this is because Composer will automatically copy all files under "vendor/vendor/./bin/" to "vendor/bin/"  
echo ignored_paths = [ "vendor/.+/tests/.+", "vendor/.+/bin/.+" ] > .hhconfig
echo "finished"
echo

echo ${}


