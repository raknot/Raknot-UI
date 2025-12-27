![Raknot UI Banner](https://raknot.dev/example/github/raknot-UI/banner/index.php)

## Features

- **Customizable Tabs** - Organize your UI with multiple tabs
- **Interactive Components** - Buttons, Toggles, Sliders, Dropdowns, and Textboxes
- **Smart Notifications** - Bottom-right notification system with auto-dismiss
- **Password Protection** - Optional authentication to secure your menu
- **Customizable Keybind** - Set your own menu toggle key from settings
- **Theme System** - Built-in light and dark mode support
- **Watermark** - Optional on-screen watermark with live time display
- **Animations** - Smooth hover effects and visual feedback
- **Easy Integration** - Simple API with callback support

## Installation

```lua
loadstring(game:HttpGet("https://raknot.dev/docs/raknot-ui.lua"))()
```

## Quick Start

The library comes with a complete example demonstrating all available components:

```lua
local RaknotUI = loadstring(game:HttpGet("https://raknot.dev/docs/raknot-ui.lua"))()

-- Create a window
local Window = RaknotUI:CreateWindow({
    Title = "My Application",
    Password = "" -- Optional password protection
})

-- Create a tab
local Tab = Window:CreateTab("Main")

-- Add components
Tab:CreateButton("Click Me", function()
    print("Button clicked!")
end)

Tab:CreateToggle("Enable Feature", false, function(value)
    print("Toggle:", value)
end)

Tab:CreateSlider("Speed", 0, 100, 50, function(value)
    print("Slider:", value)
end)

Tab:CreateDropdown("Select Option", {"Option 1", "Option 2", "Option 3"}, function(value)
    print("Selected:", value)
end)

Tab:CreateTextbox("Enter Text", "Placeholder...", function(value)
    print("Entered:", value)
end)

-- Show notifications
Window:CreateNotification("Welcome", "Thanks for using Raknot UI!")
```

## Components

### Button
Interactive clickable buttons with hover effects and callbacks.

### Toggle
On/off switches with smooth animations and state management.

### Slider
Draggable sliders with min/max values and real-time feedback.

### Dropdown
Expandable selection menus with customizable options.

### Textbox
Input fields with placeholder text and Enter-to-submit functionality.

### Notifications
Toast-style notifications that appear in the bottom right with auto-dismiss.

## Settings

The Settings tab is automatically added and includes:
- **Watermark Toggle** - Show/hide on-screen branding with live time
- **Menu Keybind** - Click to set custom menu toggle key
- **Version Info** - Current library version display

## Customization

Raknot UI supports both light and dark themes with a carefully designed color system for optimal contrast and readability.

---

**Version:** 1.0.0  
**Created by:** raknot (onys)  
**License:** MIT
