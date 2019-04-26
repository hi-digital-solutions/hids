## Setup

Clone recursively to include the theme submodule:

```sh
git clone --recurse-submodules git@github.com:hi-digital-solutions/hids.git
```

Install hugo (Mac):

```sh
brew install hugo
```

Create a Python virtual environment and install from requirements.txt (needed
for the blog import to function):

```sh
python3 -m venv .venv/hids-site
. .venv/hids-site/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

## Testing

Serve the site locally:

```sh
./serve.sh
```


## Blogs

Blog posts are imported from feeds configured in `_scripts/pullposts`, and stored
under `content/blog` as `*.html` for processing by Hugo.  These posts are ignored
by git and re-created at every build.

We can also create persistent, local-to-the-site blog posts in the same folder, by
running:

```sh
hugo new blog/my-blog-title.md
```

and writing in Markdown. These files must be committed to become part of the site.
