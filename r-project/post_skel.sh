#! /bin/sh

project_name=`basename "$PWD"`

ln -rs in/ ext/input_data
ln -rs ext/ ~/Documents/MEGA/projects/$project_name

Rscript .r_init_proj/init_renv.R

rm post_skel.sh
