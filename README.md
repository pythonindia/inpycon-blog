# Inpycon Blog

PyCon India Blog (https://in.pycon.org/blog/)


## Getting Started

Run the following commands in a `virtualenv`:

```
$ pip install -r requirements.txt
$ make serve
```

The contents should be visible at [http://localhost:8000/](http://localhost:8000/)

## Want to Contribute?

Thank you for your you interest in contributing to PyCon India blog site, please read our [Contribution Guidelines](CONTRIBUTING.md) to get started. Submit an issue in the Issues section for reporting/fixing bugs and to request new features.

## New Blog

To create a new blog, create a markdown file (.md) in the `content/blog` directory. For Pelican to parse the content properly, make sure the Metadata syntax at the start of your new blog is follows the pattern given below:

```
Title: Announcing X as Titanium Sponsor
Date: 2020-05-10 10:00
Author: John Doe
Category: 2020
Slug: announcing-X-as-titanium-sponsor

We are happy to introduce our Titanium sponsor **X**! This is also the summary line that will be displayed on the index page.

<!-- PELICAN_END_SUMMARY -->

Blog content goes here in the following lines.
```

For more details look up, https://docs.getpelican.com/en/stable/content.html
