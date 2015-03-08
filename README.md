# inpycon-blog
PyCon India Blog


## Initial setup
```
$ pip install -r requirements.txt
$ make html
$ make serve
```
The contents should be visible at http://localhost:8000

## New Blog

To create a new blog or page creat a file in contents like `touch blog/my-new-blog.rst`.

example of content can be:

```
Test Article
###############

:Date: 2015-3-03 10:20
:Category: 2015

This can be removed as soon as more, real articles are added.
```

For more details look up, http://docs.getpelican.com/en/3.5.0/content.html
