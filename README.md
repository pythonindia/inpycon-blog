# Inpycon Blog

PyCon India Blog (https://in.pycon.org/blog/)


## Getting Started



Run the following commands to create virtualenv and start working:

### Install pipenv

Just use pip:

```
$ pip install pipenv
```

Or, if you’re using Ubuntu 17.10:

```
$ sudo apt install software-properties-common python-software-properties
$ sudo add-apt-repository ppa:pypa/ppa
$ sudo apt update
$ sudo apt install pipenv
```


Otherwise, if you’re on MacOS, you can install Pipenv easily with Homebrew:

```
$ brew install pipenv
```

### Install dependencies and start server

```
$ pipenv install
$ pipenv run ./develop_server.sh start
```

The contents should be visible at [http://localhost:8000/blog/](http://localhost:8000/blog/)

## New Blog

To create a new blog or page create a file in contents like `touch blog/my-new-blog.rst`.

example of content can be:

```
Test Article
###############

:Date: 2015-3-03 10:20
:Category: 2015

This can be removed as soon as more, real articles are added.
```

For more details look up, http://docs.getpelican.com/en/3.5.0/content.html
