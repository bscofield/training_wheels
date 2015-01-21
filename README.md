# Training wheels

For checking out a new programming language in some sort of organized way.

With training_wheels, you get a Vagrantfile and a suggested process. To check out a new language (for example, Ruby),
you create a subdirectory in this directory named after the language, add a `setup.sh` file to provision a bare Ubuntu
VM to run the language, and update `$lang` at the top of the `Vagrantfile`. Then run `vagrant up` and you'll have a VM
all ready for experimentation.

## Steps

1. Write a program that outputs "hello world"
2. Write a program that takes a filename, writes "hello world" to it, and closes the file
3. Write a test for the program from #2 and run it
4. Write a program that hits GitHub's [Events API](https://developer.github.com/v3/activity/events/) and shows the last 10 events in a nice format
5. Write a program that stores the last 10 events from GitHub's Events API in Redis/SQLite and returns the total number of events stored
6. Write a Sinatra-like app that returns "hello world" as a static web page
7. Write a Sinatra-like app that reads the events (stored in #5) from Redis/SQLite and displays them
