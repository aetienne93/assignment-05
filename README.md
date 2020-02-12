# Environmental Informatics

## Assignment 05 - Complex Processing made Simple Using Shell Scripts

### Lab Objectives

On completion of this lab, students will be able to:
1. Use basic commands in the Linux OS to navigate directories, view and edit files, search for files and file contents, and find help with commands; and
2. Create simple scripts in Bash to encapsulate sequences of simple commands to streamline the completion of more complex tasks.

### Reading Assignment

Work through this tutorial for practical experience in using the Bash scripting language:  

- [Ryans Tutorials](https://ryanstutorials.net/): [Bash Scripting Tutorial](https://ryanstutorials.net/bash-scripting-tutorial/)

Bash (the **B**ourne **A**gain **Sh**ell) is another programming language, much like Python, but shell scripting languages are an integral part of the Linux operating system. Once you have completed the tutorial, you should have the skills required to write a bash script to complete the rest of the assignment.

To get more in-depth into Linux and the Bash scripting language, I reccommend the book [A Practical Guide to Linux](https://learning.oreilly.com/library/view/practical-guide-to/9780134774626/).  The following chapters are most relevent to this week's assignment:

- Chapter 8: The Bourne Again Shell (bash)
- Chapter 10: Programming the Bourne Again Shell (bash)

If you want to drill deeper on either of the two most common text file editors, then also check out:

- Chapter 6: The vim Editor
- Chapter 7: The emacs Editor

### The Lab Assignment

Clone this repository, and work through the tutorial in the repository directory.  You can leave everything related to the tutorial in this main directory.
      
To complete the assignment:

1. Start the emacs editor using "emacs &" from the terminal prompt.
2. Create a new file called "\<username\>_Lab9.sh".
   - The editor will likely start with a split window, you can switch to a single editing window by typing "\<CTRL\>\-x" followed by "1".  The key \<CTRL\> and "x" key should be pressed together, then type the "1".  
   - To resplit the window, type "<CTRL>-x" followed by "2".
   - The emacs editor, unlike the vi editor you used last week provides a GUI, with buttons and pull-down menus to help find commands.  
   - A Practical Guide to Linux: Chapter 7 and internet will also provide tables with other short cut keystrokes like the one used to split and unsplit the window.
   - When you save the new file, type "\<CTRL\>\-x" followed by "s" or click on the save icon, the new blank file will appear in the same directory from which you started the editor.
3. Now write a bash shell script to search through the contents of the station files in the StationData directory (try: a loop) 
4. Find those stations at altitudes over 200 feet (try: grep), and 
5. Copy those at high elevation (try: cp) 
6. To a new directory called "HigherElevation" (try: mkdir).
7. 
  
#### What to turn in...

Submit the working code, with header and in-line comments, to Blackboard.  It must work with the file structure and file names that I have provided (so be sure to use relative, not absolute path names).
