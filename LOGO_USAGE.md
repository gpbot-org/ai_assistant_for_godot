# Logo Usage Guide

This document outlines the proper usage of the AI Coding Assistant logo and brand assets.

## Logo Files

### Main Logo Files
- `logo.svg` - Animated version with cycling text (Grandpa EJ, Godot 4, AI Assistance)
- `logo_static.svg` - Static version with "AI Assistant" text
- `addons/ai_coding_assistant/plugin_icon.svg` - Plugin icon (animated version)

### Additional Formats
- `favicon.svg` - 32x32 favicon version for web use
- `banner.svg` - 800x200 banner for social media and headers
- `img/logo.svg` - Copy in img directory for documentation

## Logo Design Elements

### Colors
- **Primary Blue**: `#478CBF` (Godot blue)
- **Dark Blue**: `#2E5C8A` (borders and accents)
- **Orange**: `#FFA500` (AI spark/neural indicator)
- **White**: `#FFFFFF` (robot face and text)

### Design Components
1. **Outer Circle**: Blue background representing the Godot ecosystem
2. **Robot Face**: White rectangular face with rounded corners
3. **Eyes**: Two blue circles representing vision/intelligence
4. **Smile**: Simple line showing friendliness
5. **AI Spark**: Orange neural network symbol on forehead
6. **Text**: Various versions for different contexts

## Usage Guidelines

### ✅ Approved Uses
- Plugin documentation and README files
- Project branding and identification
- Social media profiles and posts
- Presentations about the plugin
- Educational materials
- Community discussions

### ❌ Prohibited Uses
- Commercial products without permission
- Misleading or false representations
- Modifications that change the core design
- Use in competing products
- Inappropriate or offensive contexts

### Size Guidelines
- **Minimum size**: 32x32 pixels (use favicon.svg)
- **Recommended size**: 128x128 pixels (use logo_static.svg)
- **Banner use**: Use banner.svg for wide formats
- **Always maintain aspect ratio**

### File Usage by Context

#### Documentation
```markdown
<!-- For README headers -->
<img src="logo_static.svg" alt="AI Coding Assistant Logo" width="128" height="128">

<!-- For banners -->
<img src="banner.svg" alt="AI Coding Assistant Banner" width="100%">
```

#### Web/HTML
```html
<!-- Favicon -->
<link rel="icon" type="image/svg+xml" href="favicon.svg">

<!-- Logo in content -->
<img src="logo_static.svg" alt="AI Coding Assistant" width="64" height="64">
```

#### Godot Project
```ini
# In project.godot
config/icon="res://logo_static.svg"
```

## Brand Colors

### Primary Palette
```css
--primary-blue: #478CBF;
--dark-blue: #2E5C8A;
--ai-orange: #FFA500;
--white: #FFFFFF;
```

### Usage
- Use primary blue for main elements
- Use dark blue for borders and secondary elements
- Use orange sparingly for AI/tech highlights
- White for text on colored backgrounds

## Animation Guidelines

### Animated Logo (logo.svg)
- 6-second cycle duration
- Text phases: "Grandpa EJ" → "Godot 4" → "AI Assistance"
- Use for splash screens or interactive elements
- Fallback to static version if animation not supported

### Static Logo (logo_static.svg)
- Use for most documentation
- Better for print materials
- Faster loading for web
- More accessible

## File Formats

### SVG (Recommended)
- Scalable vector format
- Small file size
- Crisp at any resolution
- Supports animation

### When to Use Each File
- **logo.svg**: Interactive elements, splash screens
- **logo_static.svg**: Documentation, general use
- **favicon.svg**: Browser icons, small sizes
- **banner.svg**: Headers, social media
- **plugin_icon.svg**: Godot plugin system

## Attribution

When using the logo, please include appropriate attribution:

```
AI Coding Assistant logo by Grandpa EJ
```

## Questions?

For questions about logo usage or to request additional formats, please:
- Open an issue on GitHub
- Contact the project maintainers
- Check the project documentation

## License

The AI Coding Assistant logo is part of the project and follows the same MIT license terms as the codebase. See LICENSE file for details.
