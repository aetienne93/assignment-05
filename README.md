# Environmental Informatics

## Assignment 05 - Complex Processing made Simple Using Shell Scripts

### Lab Objectives

On completion of this lab, students will be able to:
1. Use basic commands in the Linux OS to navigate directories, view and edit files, search for files and file contents, and find help with commands; and
2. Create simple scripts in Bash to encapsulate sequences of simple commands to streamline the completion of more complex tasks.

### Reading Assignment

Work through this tutorial for practical experience in using Liunx and an introduction to the Bash scripting language:

- [Ryans Tutorials](https://ryanstutorials.net/): [Linux Tutorial](https://ryanstutorials.net/linuxtutorial/)

Other tutorials are available on-line, but I have found this to be reasonable introuction to the components of Linux that I believe are most important and useful for you.  Additionally, the assignment for submission comes directly from this tutorial.
  
To get more in-depth into Linux and the Bash scripting language, I reccommend the book [A Practical Guide to Linux](https://learning.oreilly.com/library/view/practical-guide-to/9780134774626/).  The following chapters are most relevent to this week's assignment:

- Chapter 1: Welcome to Linux and macOS
- Chapter 2: Getting Started
- Chapter 3: The Utilities
- Chapter 4: The Filesystem
- Chapter 5: The Shell

If you want to drill deeper on either of the two most common text file editors, then also check out:

- Chapter 6: The vim Editor
- Chapter 7: The emacs Editor

### The Lab Assignment

Clone this repository, and work through the tutorial in the repository directory.  You can leave everything related to the tutorial in this main directory.
      
#### What to turn in...

To complete the assignment:

1. Make a directory called "Lab04" in this repository, and copy the following information into that directory:

2. The file resulting from the activities in Part 6 - should be named **"Part_06.txt"**;

3. Provide the original file, and the file after using the sort command in Part 9 - should be called **"Part_09_unsorted.txt"**, and **"Part_09_sorted.txt"**;

4. In Part 11, capture the results of the activity "Now see if you can list only the 20th last file in the directory /etc" by piping them into a file and submitting the results - should be piped into a file called **"Part_11,txt"**; and

5. In Part 13, submit both scripts developed in the **Activities** section at the end of the tutorial page:

  - First script should be called "my_backup.sh"
    - Write your own backup script. You can make it as simple or complex as you like. Maybe start off with a really simple one and progressively improve it.
    
  - Second script should be called "dir_info.sh"
    - Write a script that will give you a report about a given directory.  See tutorial page for suggestions.
    
**Files not in the repository subfolder Lab04, will not be graded.**

**New material starts here**
Assignment: Complete the tutorial http://ryanstutorials.net/bash-scripting-tutorial/ to learn the basics of the Bourne Again Shell (bash) scripting language (you may want to make use of the emacs editor for this, see below and the Linux book for information on that editor).   This is another programming language, much like Python, but shell scripting languages are an integral part of the Linux operating system. Once you have completed the tutorial, you should have the skills required to write a bash script to complete the following task.

Start by downloading the tar file StationData into a new directory named for the current lab.
Untar and uncompress the file using "tar -xvzf StationData.tgz"
Start the emacs editor using "emacs &" from the terminal prompt.
Create a new file called "<username>_Lab9.sh".
The editor will likely start with a split window, you can switch to a single editing window by typing "<CTRL>   -x" followed by "1".  The   key <CTRL> and "x" key should be pressed together, then type the "1".  To resplit th   e window, type "<CTRL>-x" followed by "2".
The emacs editor, unlike the vi editor you used last week provides a GUI, with buttons and pull-down menus to help find commands.  You Linux book and internet will also provide tables with other short cut keystrokes liked the one used to split and unsplit the window.
When you save the new file, type " <CTRL>   -x" followed by "s" or click on the save icon, the new blank file will appear in the same directory from which you started the editor.  Which should be the same one where you untarred the   data file.
Now write a bash shell script to search through the contents of the station files in the StationData directory (try: a loop) find those stations at altitudes over 200 feet (try: grep), and copy those at high elevation (try: cp) to a new directory called "HigherElevation" (try: mkdir).
Submit the working code, with header and in-line comments, to Blackboard.  It must work with the file structure and file names that I have provided (so be sure to use relative, not absolute path names).
