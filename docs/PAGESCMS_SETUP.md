# PagesCMS Setup Guide for Follymaps

This guide will walk you through setting up PagesCMS for your Follymaps website, enabling you to easily manage content with geolocation data.

## Prerequisites

1. A GitHub repository with your Follymaps website
2. A GitHub account
3. Your website should be built and deployable

## Step 1: Push Your Repository to GitHub

If you haven't already, push this Follymaps repository to GitHub:

```bash
# Initialize git (if not already done)
git init

# Add your files
git add .
git commit -m "Initial Follymaps setup with PagesCMS configuration"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git push -u origin main
```

## Step 2: Set Up PagesCMS

1. Go to [app.pagescms.org](https://app.pagescms.org)
2. Sign in with your GitHub account
3. Grant the necessary permissions
4. Select your Follymaps repository

## Step 3: Configure GitHub Pages (Optional)

If you want to host your site on GitHub Pages:

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Under "Source", select **GitHub Actions**
4. The `.github/workflows/gh-pages.yml` file is already configured for deployment

## Step 4: Start Creating Content

Once PagesCMS is connected, you can create three types of content:

### Posts
Perfect for blog entries, travel stories, or any content tied to a specific location.

**Required Fields:**
- Title
- Description
- Date
- Location (with latitude, longitude, name, and optional address)

### Pages
For static content like About pages, Contact forms, etc.

### Map Collections
Curated collections of multiple locations, perfect for travel itineraries or location guides.

## Geolocation Fields Explained

The Follymaps configuration includes powerful geolocation fields:

### Location Object (for Posts)
- **Name**: Human-readable location name
- **Latitude**: Precise latitude (-90 to 90)
- **Longitude**: Precise longitude (-180 to 180)
- **Address**: Full address (optional)
- **Zoom**: Default map zoom level (1-20)

### Multiple Locations (for Map Collections)
- Each location can have its own coordinates and description
- Perfect for creating themed collections (e.g., "Best Restaurants in Paris")

## Finding Coordinates

To get precise latitude and longitude coordinates:

1. **Google Maps**: Right-click on a location → Copy coordinates
2. **OpenStreetMap**: Click on a location → See coordinates in URL
3. **GPS devices or smartphone apps**

## Customizing the Configuration

The `.pages.yml` file in your repository root controls how PagesCMS works. You can:

- Add new fields to existing content types
- Create new content types
- Modify field validation and options
- Change default values

## Content Management Tips

1. **Consistent Location Names**: Use consistent naming for locations you reference multiple times
2. **Meaningful Descriptions**: Write clear descriptions for map collections
3. **Tag Organization**: Use tags to categorize your posts effectively
4. **Image Optimization**: Keep images reasonably sized for fast loading

## Troubleshooting

### PagesCMS Can't Find Configuration
- Ensure `.pages.yml` is in the repository root
- Check YAML syntax is valid
- Make sure the repository is public or PagesCMS has access

### Build Errors
- Check that all required fields are filled
- Verify coordinate values are within valid ranges
- Ensure image paths are correct

### Permission Issues
- Verify PagesCMS has access to your repository
- Check GitHub app installation permissions

## Support

- **PagesCMS Documentation**: [pagescms.org/docs](https://pagescms.org/docs)
- **PagesCMS Community**: [Discord Server](https://pagescms.org/chat)
- **Eleventy Documentation**: [11ty.dev/docs](https://11ty.dev/docs)

## Next Steps

Once PagesCMS is set up:

1. Create your first post with location data
2. Test the content creation workflow
3. Customize the theme templates to display your geolocation data
4. Set up automated deployment to your hosting platform

Happy mapping! 🗺️