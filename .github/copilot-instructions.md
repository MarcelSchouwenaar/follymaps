# Follymaps 11ty on PagesCMS

Follymaps is a theme for websites displaying geolocation maps. It is a theme inspired by Follywood (www.follywood.nl). 

## Overview
This repository contains the source code for the Follymaps website, built using 11ty (Eleventy) and hosted on Github Pages. The site leverages PagesCMS for content management, allowing for easy updates and maintenance for non-technical users. Note that the site is not built using Jekyll, despite being hosted on Github Pages.

The 11ty theme is completely independent of PagesCMS, enabling flexibility in design and functionality. Content is primarily managed through PagesCMS, which provides a user-friendly interface for content editors. However, advanced users can still access and modify the underlying 11ty templates, content, and configurations as needed.

## Important
- I (the developer) will take care of the design of the site using 11ty.

## TO DO
- [x] Start by cloning the demo repository to our local machine (https://github.com/11ty/eleventy-base-blog)
- [x] Next, set up a new repository on Github to host the Follymaps site. Be sure to include a README file and proper setup for Github Pages using 11ty.
- [x] Then, set up PagesCMS for content management (https://pagescms.com/)
	- [x] Be sure to read the PagesCMS docs (https://pagescms.org/docs/)
	- [x] ... and how to setup a custom field for adding a geolocation map (https://pagescms.org/docs/custom-fields/)
- [x] Create the custom field for geolocation maps in PagesCMS.

- [x] Once we can add pages and posts using PagesCMS that have a geolocation map, we can start working on the 11ty templates to display this content correctly on the Follymaps site.

## COMPLETED ✅

The Follymaps project has been successfully set up with:

1. **11ty Base**: Cloned and customized the Eleventy base blog template
2. **PagesCMS Configuration**: Created comprehensive `.pages.yml` with geolocation fields
3. **Content Structure**: Set up three content types:
   - **Posts**: Individual blog entries with location data
   - **Pages**: Static pages for about, contact, etc.
   - **Maps**: Collections of multiple locations for curated guides
4. **Sample Content**: Created example posts, pages, and map collections
5. **GitHub Pages**: Configured automatic deployment workflow
6. **Documentation**: Complete setup guides and instructions
7. **Geolocation Fields**: Advanced location objects with coordinates, addresses, and zoom levels

## NEXT STEPS

To deploy and use your Follymaps website:

1. Push this repository to GitHub
2. Set up PagesCMS at https://app.pagescms.org
3. Start creating content with location data
4. Customize the 11ty templates to display maps and location information

## Site structure
- **Locations**: Entries with geolocation data
- **Pages**: Static content pages