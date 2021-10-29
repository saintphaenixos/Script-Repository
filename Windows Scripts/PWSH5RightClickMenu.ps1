#This is a script that creates the needed registry keys to add the "open with Powershell 5 here" Context menu's that Pima's default deployment do not add.
# It was originally written by Kent DuBack II on 10.22.21 for Pima Community College.

#The idea is to create two functions, one that adds the needed keys, and will check if they are already installed, throwing a message and then closing the script after a brief wait. The second switch will remove them, and likewise check throwing an error if they are already removed and then closing.
