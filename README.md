# Inpycon Blog

PyCon India Blog (https://in.pycon.org/blog/)


## Getting Started 

Run the following commands in a virtualenv:

```
$ pip install -r requirements.txt
$ ./develop_server.sh start
```

The contents should be visible at [http://localhost:8000/blog/](http://localhost:8000/blog/)

## Contributing to the Website

Please read our [Contribution Guidelines](CONTRIBUTING.md) to Contribute to the Website

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
