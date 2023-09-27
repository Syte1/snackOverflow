#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "help to view commands"
    exit 1
fi

help() {
    echo "Available commands:"
    echo "mygit-init <directory> : initializes a new Git repository in the specified directory."
    echo "mygit-clone <remote_url> <local_directory> : clones an existing Git repository from a remote URL to a local directory."
    echo "mygit-commit -m '<commit_message>' : allows users to add and commit changes to the local Git repository."
    echo "mygit-push : pushes committed changes to a remote Git repository."
    echo "mygit-create-directory <directory_name> : creates a directory within the Git repository."
    echo "mygit-delete-file <file_name> : This command deletes a file from the repository."
    echo "mygit-delete-directory <directory_name> : deletes a directory and its contents from the repository."
    echo "mygit-list-contents <directory> : lists the contents of a directory within the Git repository."
}

# Parse the command
command=$1
shift

case $command in
    mygit-init)
        mkdir -p $1
        cd $1
        git init
        ;;
    mygit-clone)
        git clone $1 $2
        ;;
    mygit-commit)
        git add -A
        git commit "$@"
        ;;
    mygit-push)
        git push
        ;;
    mygit-create-directory)
        mkdir -p $1
        ;;
    mygit-delete-file)
        rm $1
        ;;
    mygit-delete-directory)
        rm -r $1
        ;;
    mygit-list-contents)
        ls $1
        ;;
    help)
        help
        ;;
    *)
        echo "$command not found"
        echo "help to view commands"
        exit 1
        ;;
esac
