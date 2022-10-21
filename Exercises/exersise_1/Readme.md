## Problem statement

Write a Bash script that take an input as tar file process it and give [output](https://github.com/HrithikSawant/symmetrical-octo-guide/tree/main/Exercises/exersise_1/result).



The program should have following features.
Story 1

Ability to print lines containing a search string in a file. The program should print the results on standard output (STDOUT). Feel free to assume case-sensitive and exact word matches if required.

Here's how a sample grep command will be executed.

$ ./mygrep "search_string" filename.txt
I found the search_string in the file.

Assumptions:

    Our grep utility is packaged as a standalone binary (./mygrep). Based on the programming language you're using, you may be able to create a standalone utility (e.g. in Golang). If not, use any CLI execution method in your language (e.g. java -jar grep.jar for Java)
    The file filename.txt is found in the current directory and contains multiple lines, one of which contains the word "search_string"
    The output is printed on STDOUT

Expectations:

    Write down test cases for zero, one and many matches of search string in a file
    Your code should handle errors when file doesn't exist

Story 2

Ability to search for a string from standard input (STDIN) and print the results on standard output (STDOUT). Your program should be able to read the text from standard input.

$ ./mygrep foo
bar
barbazfoo
Foobar
food
^D

should produce following output

barbazfoo
food

Assumptions:

    Assume case-sensitive search. In above example, the Foobar is not printed in the output since we are performing a case-sensitive search.
    We are NOT matching exact full words. Instead, the grep works similar to string contains functionality. In above example, food is matched in the output even if we are searching for foo.
    You need to assume some way to indicate the "end of input", i.e. ^D character above indicates that there's no more input and program should execute and print the results.

Expectations:

    How will you write test cases for this code? Note that, you can't pause for user input in the test case.
    Can you reuse code from previous story if possible? How will you refactor your existing code to make this code-reuse possible?

Story 3

Ability to write output to a file instead of a standard output. When a -o filename flag is passed, the output from the program should be added to the file instead of printing it on standard output.

Example:

$ ./mygrep lorem loreipsum.txt -o out.txt

should create an out.txt file with the output from mygrep. for example,

$ cat out.txt
lorem ipsum
a dummy text usually contains lorem ipsum

Assumptions:

    Assume the output file doesn't exist in the current directory. If a file already exists, program should print an appropriate error.

Expectations:

    Reuse code from previous stories as much as possible. Make your code modular and extensible.
    Write test case for this story.

Story 4

Ability to perfom case-sensitive grep using -i flag. For e.g.

$ ./mygrep -i foo
bar
barbazfoo
Foobar
food
^D

should produce following output

barbazfoo
Foobar
food

Assumptions:

    Please note that various flags can be combined together. i.e. We may use ./mygrep -i foo filename.txt -o outfile.txt in a single command execution. This should perform case insensitive search for word foo in the file filename.txt and the output should be saved in outfile.txt.

Expectations:

    As mentioned in previous stories, we need to reuse code as much as possible. We should also write modular and extensible code.

Story 5

Ability to search for a string recursively in any of the files in a given directory. When searching in multiple files, the output should indicate the file name (like the grep -r command works). Also, all the output from one file should be grouped together in the final output. (in other words, output from two files shouldn't be interleaved in the final output being printed). A sample invocation of the program could be as follows:

$ ./mygrep "test" tests
tests/test1.txt:this is a test file
tests/test1.txt:one can test a program by running test cases
tests/inner/test2.txt:this file contains a test line

Assumptions:

    Assume that the directory contains only text files (no binary files like images, pdf, mp4, etc).
    If no matches are found in a file, the file shouldn't be included in the output. i.e. Program should generate output that is similar to the one produced by grep command. So in case of any doubts, refer grep command manual page.

Story 6, 7, 8

Implement other grep options

    -A print n lines before the match
    -B print n lines after the match
    -C only print count of matches instead of actual matched lines

Feel free to make suitable assumptions if needed, ensure to document them in README.md.
Overall criteria for evaluation:

    Use any of Go, Java, Ruby, Python to write your code.
    Add unit tests for all stories and functions
    Write clean and readable code
    Adherance to coding standards and guidelines
    Treat it as production code, so use best practises what you can think of.
    You don't need to implement all the stories. Complete whatever you can within a specified time (say, 1-2 weeks) and submit the solution. We are not looking for implementation for all the stories, instead looking for good quality code that implements at least first 4-5 stories.
