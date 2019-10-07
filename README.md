## Setup

Clone recursively to include the theme submodule:

```sh
git clone --recurse-submodules git@github.com:hi-digital-solutions/hids.git
```

Install hugo (Mac):

```sh
brew install hugo
```

## Testing

Serve the site locally:

```sh
./serve.sh
```


## Blogs

Blog posts are added by adding markdown or HTML files with suitable [front matter][frontmatter] to the `content/blog` folder. The filename will be used as the URL slug, so it should be readable (ideally the post's title, lowercase, with spaces replaced by dashes).

*e.g.* a file titled `my-first-post.md` containing:

```
---
title: "My First Post"
author: "Some Guy"
date: 2019-10-01T12:16:57-04:00
---

Your content goes here...
```

To make life easier, you can run the `newpost.sh` script and pass it a title and author. It will create a dummy post, with correct front matter and placeholder text, as above. *e.g.*:

```sh
./newpost.sh -t "My First Post" -a "Some Guy"
```

To actually *publish* the post to the web site, commit/merge to master and push to Github. Within a few minutes, Netlify will re-publish the site.

## Contact us Page

The current theme that is used has a [shortcode](https://themes.gohugo.io/gohugo-theme-ananke/#activate-the-contact-form) that easily allows for form submission from the static site.  [Formspree](https://formspree.io/) is used to collect and email the forms to contact@hidigital.solutions.

[frontmatter]: https://gohugo.io/content-management/front-matter/
