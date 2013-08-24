#!/bin/bash

vim_bundle_git=(
        "git://github.com/slack/vim-bufexplorer"
        "git://github.com/msanders/snipmate.vim.git"
        "git://github.com/scrooloose/nerdtree.git"
#        "git://github.com/vim-scripts/c.vim"
        "http://github.com/tpope/vim-surround"
        "http://github.com/kien/ctrlp.vim.git"
)

bundles_dir=./bundle

echo "Cleaning up $bundles_dir"
rm -rf $bundles_dir/*

for bundle in ${vim_bundle_git[*]}
do
        IFS='/' read -ra bundle_url <<< "$bundle"
        bundle_name=`echo "${bundle_url[${#bundle_url[@]}-1]}" | sed -e 's/.git$//'`
        echo "Creating directory for $bundle_name"
        mkdir $bundles_dir/$bundle_name
        git clone $bundle $bundles_dir/$bundle_name
        find $bundles_dir/$bundle_name -name ".git" -exec rm -rf {} \;
done
