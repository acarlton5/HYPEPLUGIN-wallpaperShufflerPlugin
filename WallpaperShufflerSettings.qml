import QtQuick
import qs.Common
import qs.Widgets
import qs.Modules.Plugins

PluginSettings {
    id: root
    pluginId: "wallpaperShufflerPlugin"

    StyledText {
        width: parent.width
        text: "Shuffle Wallpapers"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    StringSetting {
        settingKey: "wallpaperPath"
        label: "Wallpaper Path"
        description: "Path to the wallpapers that will be shuffle-played (will be searched recursively)"
        defaultValue: "~/Pictures/Wallpapers"
        placeholder: "/path/to/your/wallpapers/directory"
    }

    StringSetting {
        settingKey: "shuffleInterval"
        label: "Shuffle Interval"
        description: "The time in seconds between each shuffle"
        defaultValue: "1800"
    }

    ToggleSetting {
        settingKey: "changeOnReload"
        label: "Change on Plugin Reload"
        description: "Whether to change the wallpaper immediately when the plugin is loaded or reloaded"
        defaultValue: true
    }

    ToggleSetting {
        settingKey: "timerEnabled"
        label: "Timer Enabled"
        description: "Whether the wallpaper should be shuffled automatically based on the interval"
        defaultValue: true
    }
}
