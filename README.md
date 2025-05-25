# Cloud Resume Website

A responsive resume/portfolio website hosted on GitHub Pages.

## Features

- Responsive design
- Modern UI
- Visitor counter (simulated with localStorage)
- Clean and professional layout

## Project Structure

```
├── .github/
│   └── workflows/
│       └── github-pages.yml    # GitHub Actions workflow for GitHub Pages
├── index.html                  # Resume HTML
├── styles.css                  # CSS styling
└── script.js                   # JavaScript for visitor counter
```

## Deployment

This website is deployed using GitHub Pages with automatic deployment via GitHub Actions.

### How to Deploy Your Own Version

1. **Fork/Clone this repository**

2. **Customize the Content**
   - Edit `index.html` to update your personal information
   - Modify `styles.css` to change the styling
   - Update `script.js` as needed

3. **Enable GitHub Pages**
   - Go to your repository settings
   - Navigate to "Pages"
   - Select "GitHub Actions" as the source
   - The site will be deployed automatically

4. **View Your Website**
   - Your website will be available at `https://[your-username].github.io/[repository-name]/`

## Local Development

To run the website locally:

```bash
# Using Python's built-in HTTP server
python -m http.server 8000

# Or using Node.js
npx serve
```

Then open your browser to http://localhost:8000

## Customization

- Edit `index.html` to change the content
- Modify `styles.css` to update the appearance
- Adjust `script.js` for functionality changes 