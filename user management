#!/bin/bash


function create_user {
        read -p "Enter username:" username

        read -p "Enter password:" password

        sudo useradd -m $username -p $password

        echo "user $username created successfully"

}

#for ((i=1; i<=5; i++ ))
#do
#       create_user
#done

function delete_user {
        read -p "Enter the user to be deleted" username
        sudo userdel -r $username
        echo "user $username deleted succssfully"

}

function show_usage {
        echo "Welcome to user management"
        echo "To create user user c as argument"
        echo "To delete user use d as an argument"

}


case "$1" in
        c)
        echo "Create user in progress"
        create_user
        ;;
        d)        
        echo "Delete user in progress"
        delete_user
        ;;
        *)
                show_usage
        ;;


esac
