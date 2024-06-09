import json


def find_values_in_json_files(json_files):
    results = []

    for file_path in json_files:
        with open(file_path, 'r', encoding='utf8') as file:
            try:
                data = json.load(file)

                name = data.get('name')
                cursor_color = data.get('colors', {}).get(
                    'editorCursor.foreground')

                result = [name, cursor_color]

                results.append(result)

            except json.JSONDecodeError as e:
                print(f'Error reading JSON file {file_path}: {str(e)}')

    return results


# 示例用法

json_files = [
    # "C:/Users/86150/.vscode/extensions/atomiks.moonlight-0.10.6/themes/moonlight-ii.json",
    # "C:/Users/86150/.vscode/extensions/atomiks.moonlight-0.10.6/themes/moonlight-ii-italic.json",
    # "C:/Users/86150/.vscode/extensions/atomiks.moonlight-0.10.6/themes/moonlight-italic.json",
    # "C:/Users/86150/.vscode/extensions/atomiks.moonlight-0.10.6/themes/moonlight.json",
    # "C:/Users/86150/.vscode/extensions/bdesigned.deep-water-1.2.3/themes/Deep Water-Light-color-theme.json",
    # "C:/Users/86150/.vscode/extensions/bdesigned.deep-water-1.2.3/themes/Deep Water-Light-color-theme-noitalic.json",
    # "C:/Users/86150/.vscode/extensions/bdesigned.deep-water-1.2.3/themes/Deep Water-color-theme.json",
    # "C:/Users/86150/.vscode/extensions/bdesigned.deep-water-1.2.3/themes/Deep Water-color-theme-noitalic.json",
    # "C:/Users/86150/.vscode/extensions/david-moskovitz.winter-is-coming-one-dark-pro-0.0.2/theme.json",

    # ! invalid
    # "C:/Users/86150/.vscode/extensions/dracula-theme.theme-dracula-2.24.3/theme/dracula.json",
    # "C:/Users/86150/.vscode/extensions/dracula-theme.theme-dracula-2.24.3/theme/dracula-soft.json",
    # "C:/Users/86150/.vscode/extensions/fisheva.eva-theme-2.1.4/themes/Eva-Dark-Italic.json",
    # "C:/Users/86150/.vscode/extensions/fisheva.eva-theme-2.1.4/themes/Eva-Light.json",
    # "C:/Users/86150/.vscode/extensions/fisheva.eva-theme-2.1.4/themes/Eva-Light-Bold.json",
    # "C:/Users/86150/.vscode/extensions/fisheva.eva-theme-2.1.4/themes/Eva-Light-Italic.json",
    # "C:/Users/86150/.vscode/extensions/fisheva.eva-theme-2.1.4/themes/Eva-Dark.json",
    # "C:/Users/86150/.vscode/extensions/fisheva.eva-theme-2.1.4/themes/Eva-Dark-Bold.json",
    # "C:/Users/86150/.vscode/extensions/tycronin.eva-01-theme-1.0.0/themes/Eva 01 Theme-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/hc_light.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/light_modern.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/light_plus.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/light_vs.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/dark_modern.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/dark_plus.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/dark_vs.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-defaults/themes/hc_black.json",
    # ! invalid

    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/dark-high-contrast.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/light.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/light-colorblind.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/light-default.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/light-high-contrast.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/dark.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/dark-colorblind.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/dark-default.json",
    # "C:/Users/86150/.vscode/extensions/github.github-vscode-theme-6.3.4/themes/dark-dimmed.json",
    # "C:/Users/86150/.vscode/extensions/nicolasdschmidt.lunar-pink-1.4.0/themes/LunarPinkSatellite.json",
    # "C:/Users/86150/.vscode/extensions/nicolasdschmidt.lunar-pink-1.4.0/themes/LunarPink.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-abyss/themes/abyss-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-kimbie-dark/themes/kimbie-dark-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-monokai/themes/monokai-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-monokai-dimmed/themes/dimmed-monokai-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-quietlight/themes/quietlight-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-red/themes/Red-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-solarized-dark/themes/solarized-dark-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-solarized-light/themes/solarized-light-color-theme.json",
    # "D:/Microsoft VS Code/resources/app/extensions/theme-tomorrow-night-blue/themes/tomorrow-night-blue-color-theme.json",
    "C:/Users/86150/.vscode/extensions/zhuangtongfa.material-theme-3.16.0/themes/OneDark-Pro-flat.json",
    "C:/Users/86150/.vscode/extensions/zhuangtongfa.material-theme-3.16.0/themes/OneDark-Pro-mix.json",
    "C:/Users/86150/.vscode/extensions/zhuangtongfa.material-theme-3.16.0/themes/OneDark-Pro.json",
    "C:/Users/86150/.vscode/extensions/zhuangtongfa.material-theme-3.16.0/themes/OneDark-Pro-darker.json",
]


results = find_values_in_json_files(json_files)

print("[")
for result in results:
    print(f"  {result},")
print("]")
