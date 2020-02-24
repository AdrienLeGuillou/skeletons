#! /bin/sh
echo "This script will install the \`renv\` R package and all packages mentioned
in the renv.lock file.

The installation will NOT be interactive. If you need some packages from private
github repository, make sure that the \"GITHUB_PAT\" environment variable is set
with your GitHub Private Access Token"
echo
echo -n "Do you wish to proceed? [y/n] "
read answer
echo

if [ "$answer" != "${answer#[Yy]}" ] ;
then
    Rscript .r_init_proj/init_renv.R
    Rscript .r_init_proj/install_stack.R
fi
