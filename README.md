# Training wheels

For checking out a new programming language in some sort of organized way.

With training_wheels, you get a Vagrantfile and a suggested process. To check out a new language (for example, Ruby),
you create a subdirectory in this directory named after the language, add a `setup.sh` file to provision a bare Ubuntu
VM to run the language, and update `$lang` at the top of the `Vagrantfile`. Then run `vagrant up` and you'll have a VM
all ready for experimentation.
