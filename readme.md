# B2 Notify V2

## SUPPORT DISCORD: discord.gg/KZRBA6H5kR

## Overview

B2 Notify V2 is a customizable notification system for FiveM, designed to provide an enhanced user interface experience. It supports multiple notification types, positions, and integrates with sounds to alert users effectively.

## Features

- **Multiple Notification Types**: Success, Error, Warning, and Info notifications.
- **Positioning**: Place notifications at the top, middle, or bottom of the screen, with left, right, and center variations.
- **Stacking**: Ensures notifications do not overlap each other.
- **Customization**: Color-coded notifications with a glowing border and bar on the left.
- **Sound Alerts**: Play different sounds for each notification type.
- **Ease of Use**: Simple command and export functions for triggering notifications.

## Installation

1. **Download and Extract**: Download the repository and extract it to your `resources` folder in your FiveM server directory.
2. **Folder Structure**:
   ```
   resources/
   └── b2_notifyV2/
       ├── html/
       │   ├── index.html
       │   ├── sounds/
       │   │   ├── success.wav
       │   │   ├── error.wav
       │   │   ├── warning.wav
       │   │   └── info.wav
       ├── client.lua
       └── __resource.lua
   ```

3. **Add to Server Configuration**:
   Open your `server.cfg` file and add the following line:
   ```
   start b2_notifyV2
   ```

## Usage

### Export Function

You can trigger notifications from other scripts using the export function.

**Syntax**:
```lua
exports['b2_notifyv2']:ShowNotification(title, message, duration, type, position)
```

**Example**:
```lua
exports['b2_notifyv2']:ShowNotification("Test Title", "This is a test message", 5000, "success", "top-right")
```

## Configuration

### Notification Types

- **success**: Displays a success message with a green highlight.
- **error**: Displays an error message with a red highlight.
- **warning**: Displays a warning message with a yellow highlight.
- **info**: Displays an info message with a blue highlight.

### Positions

- **top-left**
- **top-right**
- **bottom-left**
- **bottom-right**
- **middle-left**
- **middle-right**
- **middle-center**
- **top-middle**
- **bottom-middle**

## Development

### HTML (`index.html`)

The `index.html` file contains the Vue.js application & TailwindCSS styling that renders the notifications.

### Lua Script (`client.lua`)

The `client.lua` script handles the commands and exports to trigger notifications from other resources.

### Resource Manifest (`__resource.lua`)

Defines the resource for FiveM and specifies the files to be used.

**Content**:
```lua

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/sounds/*.wav'
}

client_scripts {
    'client.lua'
}
```

## Contributing

Contributions are welcome! If you have any suggestions or improvements, feel free to create an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.MD) file for details.

## Acknowledgements

- [Vue.js](https://vuejs.org/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Font Awesome](https://fontawesome.com/)
- [FiveM](https://fivem.net/)

## Contact

For any questions, support or to follow our upcoming releases, you can reach out on our [SUPPORT DISCORD](discord.gg/KZRBA6H5kR)
