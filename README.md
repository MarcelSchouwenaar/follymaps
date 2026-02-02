# Follymaps

A geolocation-focused website theme built with [Eleventy](https://www.11ty.dev/) and integrated with [PagesCMS](https://pagescms.com/) for content management. Follymaps allows you to create beautiful websites displaying geolocation maps, inspired by Follywood (www.follywood.nl).

## Getting Started

* [Want a more generic/detailed getting started guide?](https://www.11ty.dev/docs/getting-started/)

1. Make a directory and navigate to it:

```
mkdir my-blog-name
cd my-blog-name
```

2. Clone this Repository

```
git clone https://github.com/11ty/eleventy-base-blog.git .
```

_Optional:_ Review `eleventy.config.js` and `_data/metadata.js` to configure the site’s options and data.

3. Install dependencies

```
npm install
```

4. Run Eleventy

Generate a production-ready build to the `_site` folder:

```
npx @11ty/eleventy
```

Or build and host on a local development server:

```
npx @11ty/eleventy --serve
```

Or you can run [debug mode](https://www.11ty.dev/docs/debugging/) to see all the internals.

## Features

- **11ty-powered**: Built with Eleventy v3 for fast, static site generation
- **PagesCMS Integration**: User-friendly content management system
- **Geolocation Maps**: Custom fields and templates for displaying location-based content
- **GitHub Pages Ready**: Configured for easy deployment to GitHub Pages
- **Zero-JavaScript Output**: Content is exclusively pre-rendered for optimal performance
- **Responsive Design**: Mobile-first approach ensuring great user experience on all devices

## Getting Started

### Prerequisites

- Node.js (see `.nvmrc` for recommended version)
- npm or yarn package manager
- Git

### Quick Start

1. **Clone and setup**:

```bash
git clone <your-repo-url> follymaps
cd follymaps
./setup.sh
```

2. **Start developing**:

```bash
npm start
```

3. **Set up PagesCMS** (for content management):

See [docs/PAGESCMS_SETUP.md](docs/PAGESCMS_SETUP.md) for detailed instructions.

### Manual Installation

If you prefer manual setup:

1. **Clone this repository**:

```bash
git clone <your-repo-url> follymaps
cd follymaps
```

2. **Install dependencies**:

```bash
npm install
```

3. **Configure your site** by editing `_data/metadata.js`

4. **Start the development server**:

```bash
npm start
```

5. **Build for production**:

```bash
npm run build
```

### GitHub Pages Setup

This site is configured to work with GitHub Pages. The `.nojekyll` file ensures that GitHub Pages serves the site correctly without Jekyll processing.

### PagesCMS Setup

To set up PagesCMS for content management:

1. Visit [PagesCMS.com](https://pagescms.com/) and connect your GitHub repository
2. Configure the custom geolocation field (see documentation below)
3. Start creating content with location data

## Architecture

- **11ty Templates**: Located in `_includes/` and content folders
- **Content Management**: Via PagesCMS with custom geolocation fields
- **Styling**: CSS files in `css/` folder
- **Static Assets**: Public files in `public/`
- **Configuration**: Main config in `eleventy.config.js`
	- All URLs are decoupled from the content’s location on the file system.
	- Configure templates via the [Eleventy Data Cascade](https://www.11ty.dev/docs/data-cascade/)
- **Performance focused**: four-hundos Lighthouse score out of the box!
	- _0 Cumulative Layout Shift_
	- _0ms Total Blocking Time_
- Local development live reload provided by [Eleventy Dev Server](https://www.11ty.dev/docs/dev-server/).
- Content-driven [navigation menu](https://www.11ty.dev/docs/plugins/navigation/)
- Fully automated [Image optimization](https://www.11ty.dev/docs/plugins/image/)
	- Zero-JavaScript output.
	- Support for modern image formats automatically (e.g. AVIF and WebP)
	- Processes images on-request during `--serve` for speedy local builds.
	- Prefers `<img>` markup if possible (single image format) but switches automatically to `<picture>` for multiple image formats.
	- Automated `<picture>` syntax markup with `srcset` and optional `sizes`
	- Includes `width`/`height` attributes to avoid [content layout shift](https://web.dev/cls/).
	- Includes `loading="lazy"` for native lazy loading without JavaScript.
	- Includes [`decoding="async"`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decoding)
	- Images can be co-located with blog post files.
- Per page CSS bundles [via `eleventy-plugin-bundle`](https://github.com/11ty/eleventy-plugin-bundle).
- Built-in [syntax highlighter](https://www.11ty.dev/docs/plugins/syntaxhighlight/) (zero-JavaScript output).
- Draft content: use `draft: true` to mark any template as a draft. Drafts are **only** included during `--serve`/`--watch` and are excluded from full builds. This is driven by the `addPreprocessor` configuration API in `eleventy.config.js`. Schema validator will show an error if non-boolean value is set in data cascade.
- Blog Posts
	- Automated next/previous links
	- Accessible deep links to headings
- Generated Pages
	- Home, Archive, and About pages.
	- [Atom feed included (with easy one-line swap to use RSS or JSON)](https://www.11ty.dev/docs/plugins/rss/)
	- `sitemap.xml`
	- Zero-maintenance tag pages ([View on the Demo](https://eleventy-base-blog.netlify.app/tags/))
	- Content not found (404) page

## Demos

- [Netlify](https://eleventy-base-blog.netlify.app/)
- [Vercel](https://demo-base-blog.11ty.dev/)
- [Cloudflare Pages](https://eleventy-base-blog-d2a.pages.dev/)
- [GitHub Pages](https://11ty.github.io/eleventy-base-blog/)

## Deploy this to your own site

Deploy this Eleventy site in just a few clicks on these services:

- Read more about [Deploying an Eleventy project](https://www.11ty.dev/docs/deployment/) to the web.
- [Deploy this to **Netlify**](https://app.netlify.com/start/deploy?repository=https://github.com/11ty/eleventy-base-blog)
- [Deploy this to **Vercel**](https://vercel.com/import/project?template=11ty%2Feleventy-base-blog)
- Look in `.github/workflows/gh-pages.yml.sample` for information on [Deploying to **GitHub Pages**](https://www.11ty.dev/docs/deployment/#deploy-an-eleventy-project-to-git-hub-pages).
- [Try it out on **Stackblitz**](https://stackblitz.com/github/11ty/eleventy-base-blog)

### Implementation Notes

- `content/about/index.md` is an example of a content page.
- `content/blog/` has the blog posts but really they can live in any directory. They need only the `posts` tag to be included in the blog posts [collection](https://www.11ty.dev/docs/collections/).
- Use the `eleventyNavigation` key (via the [Eleventy Navigation plugin](https://www.11ty.dev/docs/plugins/navigation/)) in your front matter to add a template to the top level site navigation. This is in use on `content/index.njk` and `content/about/index.md`.
- Content can be in _any template format_ (blog posts needn’t exclusively be markdown, for example). Configure your project’s supported templates in `eleventy.config.js` -> `templateFormats`.
- The `public` folder in your input directory will be copied to the output folder (via `addPassthroughCopy` in the `eleventy.config.js` file). This means `./public/css/*` will live at `./_site/css/*` after your build completes.
- This project uses three [Eleventy Layouts](https://www.11ty.dev/docs/layouts/):
	- `_includes/layouts/base.njk`: the top level HTML structure
	- `_includes/layouts/home.njk`: the home page template (wrapped into `base.njk`)
	- `_includes/layouts/post.njk`: the blog post template (wrapped into `base.njk`)
- `_includes/postslist.njk` is a Nunjucks include and is a reusable component used to display a list of all the posts. `content/index.njk` has an example of how to use it.

#### Content Security Policy

If your site enforces a [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) (as public-facing sites should), you have a few choices (pick one):

1. In `base.njk`, remove `<style>{% getBundle "css" %}</style>` and uncomment `<link rel="stylesheet" href="{% getBundleFileUrl "css" %}">`
2. Configure the server with the CSP directive `style-src: 'unsafe-inline'` (less secure).
