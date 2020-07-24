# Inpycon Blog

PyCon India Blog (https://in.pycon.org/blog/)

This repository holds the source code and related content for the official blog of [PyCon India](https://in.pycon.org/).

## Getting Started

The blog is created using Pelican. You can get started with development by installing the requirements in a virtual environment. 

1. Create a virtual environment with [virtualenv](https://virtualenv.pypa.io/en/stable/) using `virtualenv <env_name>`.
2. Activate your virtual environment using `source /path-to-env/bin/activate`.
3. Run `pip install -r requirements.txt` to install all the dependencies for the blog.
4. Run `make serve` any time while working to start a development server.
* If you want the site to be regenerated with every change you make, you can instead run `make devserver`.

The contents of the blog should be visible at [http://localhost:8000/](http://localhost:8000/).

For further help, you can check out the [Pelican docs](https://docs.getpelican.com/en/stable/index.html).

## Want to Contribute?

Thank you for your you interest in contributing to PyCon India blog site, please read our [Contribution Guidelines](CONTRIBUTING.md) to get started. Submit an issue in the Issues section for reporting/fixing bugs and to request new features.

### instructions for Writers

1. Fork the repository and clone to your machine by using the command
```
git clone https://github.com/<username>/inpycon-blog.git
```
2. To run a local copy of the website, open the command prompt or your preferred CLI, change the directory to the address of the repository and use the command `make devserver` to set up a development server. You can find a working copy of your work at [http://localhost:8000/](http://localhost:8000/).

3. To create a new blog, create a markdown file (.md) in the `content/blog` directory. For Pelican to parse the content properly, make sure the Metadata syntax at the start of your new blog is follows the pattern given below:

```
Title: Announcing X as Titanium Sponsor
Date: 2020-05-10 10:00
Author: John Doe
Category: 2020
Tags: pelican, publishing
Slug: announcing-X-as-titanium-sponsor
Summary: Short version for index and feeds

We are happy to introduce our Titanium sponsor **X**! This is also the summary line that will be displayed on the index page.

<!-- PELICAN_END_SUMMARY -->

Blog content goes here in the following lines.
```

If you need any help with writing content in plecan, please check out [the documentation](https://docs.getpelican.com/en/stable/content.html).
