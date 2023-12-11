Command line for the win
========================

This project is part of the Alx - SE curriculum of software engineering. The main objective is to understand and implement the concepts of using SFTP on a Linux terminal.

Background Context
------------------

CMD CHALLENGE is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It's a good training to improve your command line skills!

Learning Objectives:
--------------------
-   Understand the difference between different command line commands.
-   Learn what SFTP is and how to use it.
-   Understand when we need to use SFTP.
-   Learn how to correctly handle a command.
-   Understand the purpose of using SFTP.
-   Learn how to raise a built-in command.
-   Understand when we need to implement a clean-up action after a command.


Steps to Use the SFTP Command-Line Tool:
----------------------------------------
1. Open a terminal on your local machine.
2. Navigate to the Directory where the screenshots was saved.
3. Use the SFTP command-line tool to establish a connection to the sandbox environment. You will need the hostname, username, and password provided to you for the sandbox environment. The command will look something like this: `sftp xxxxxxxxxxxx@xxxxxxxx.alx-cod.online`.
4. Once connected, navigate to the directory where you want to upload the screenshots. You can use the `cd` command to change directories.
5. Use the SFTP `put` command to upload the screenshots from your local machine to the sandbox environment. The command will look like this: `put 0-first_9_tasks.jpg`.
6. Confirm that the screenshots have been successfully transferred by checking the sandbox directory. You can use the `ls` command to list the files in the current directory.
7. Exit the SFTP connection using the `exit` command.
8. Once the screenshots are transferred, you can proceed to push the screenshots to your repository on GitHub as mentioned.
