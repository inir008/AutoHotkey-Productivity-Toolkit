# AutoHotkey Productivity Toolkit

A comprehensive AutoHotkey script that enhances Windows productivity with essential keyboard shortcuts and window management features.

## Features

### 🪟 Window Management
- **Minimize/Maximize Windows**: Use `Win + ↓` to minimize and `Win + ↑` to maximize the active window
- **Always On Top Toggle**: Press `Alt + T` to toggle any window to stay always on top
- **Quick Alt-Tab**: Use `CapsLock` for instant window switching (simulates Alt+Tab)

### 🔊 Audio Control
- **Volume Control**: Hold `Alt` and scroll mouse wheel up/down to adjust volume
- **Quick Mute**: Press `Alt + Middle Mouse Button` to mute/unmute

### 🔍 Search & Browse
- **Quick Search**: 
  - `F1` - Search with Google
  - `F2` - Search YouTube
  - `Alt + Right Click` - Search selected text on Google
- **Custom Search Dialog**: Enter your query in the popup dialog box

### ⚙️ System Controls
- **Quick Close**: Press `Alt + Q` instead of `Alt + F4` to close applications
- **Suspend Hotkeys**: Press `Alt + S` to temporarily disable all hotkeys

## Installation

1. **Download AutoHotkey**: Install from [autohotkey.com](https://www.autohotkey.com/)
2. **Download Script**: Save `AutoHotkey-Productivity-Toolkit.ahk` to your desired location
3. **Run Script**: Double-click the `.ahk` file to start
4. **Auto-Start** (Optional): Add the script to your Windows startup folder for automatic loading

### Adding to Startup
1. Press `Win + R`, type `shell:startup`, and press Enter
2. Copy the script file to this folder
3. The script will now run automatically when Windows starts

## Keyboard Shortcuts Reference

| Shortcut | Function |
|----------|----------|
| `Win + ↓` | Minimize active window |
| `Win + ↑` | Maximize active window |
| `Alt + T` | Toggle always on top |
| `Alt + Q` | Close application (Alt+F4) |
| `Alt + S` | Suspend/resume hotkeys |
| `Alt + Mouse Wheel` | Volume up/down |
| `Alt + Middle Click` | Mute/unmute |
| `Alt + Right Click` | Search selected text |
| `F1` | Search with DuckDuckGo |
| `F2` | Search YouTube |
| `CapsLock` | Quick Alt-Tab |

## Key Modifiers Legend
- `^` = Ctrl
- `#` = Windows Key
- `!` = Alt  
- `+` = Shift

## Compatibility
- **OS**: Windows 7/8/10/11
- **AutoHotkey Version**: v1.1+ (Classic)
- **Architecture**: Works on both 32-bit and 64-bit systems

## Customization

The script is easily customizable. Here are some common modifications:

### Modify Shortcuts
Change any shortcut by editing the hotkey definitions. For example, to use `Ctrl + Q` instead of `Alt + Q`:
```autohotkey
^q::!F4  ; Changed from !q::!F4
```

### Add New Features
The script structure makes it easy to add new hotkeys. Follow the existing pattern:
```autohotkey
; Your custom hotkey
Hotkey::
YourAction
return
```

## Troubleshooting

### Script Not Working
- Ensure AutoHotkey is properly installed
- Check if the script is running (look for AutoHotkey icon in system tray)
- Try running AutoHotkey as administrator

### Conflicts with Other Software
- Some applications may override these shortcuts
- Use `Alt + S` to temporarily suspend hotkeys if needed
- Consider changing conflicting shortcuts in the script

### Performance Issues
- The script uses minimal system resources
- If experiencing issues, try restarting the script

## Contributing

Feel free to contribute improvements:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## Support

If you encounter issues or have suggestions:
- Open an issue on GitHub
- Check AutoHotkey documentation at [autohotkey.com/docs](https://www.autohotkey.com/docs/)

## Changelog

### v1.0
- Initial release with core productivity features
- Window management shortcuts
- Audio control via mouse wheel
- Quick search functionality
- System control hotkeys

---

**Note**: This script modifies system behavior through keyboard shortcuts. Please review the shortcuts to ensure they don't conflict with your existing workflow.
