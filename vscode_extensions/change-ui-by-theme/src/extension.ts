import * as vscode from "vscode";

const themeColorsMap = new Map([
  ["Moonlight II", "#82aaff"],
  ["Moonlight II Italic", "#82aaff"],
  ["Moonlight Italic", "#70b0ff"],
  ["Moonlight", "#70b0ff"],
  ["Deep Water Light", "#21cfd5"],
  ["Deep Water Light No Italics", "#21cfd5"],
  ["Deep Water", "#21cfd5"],
  ["Deep Water No Italics", "#21cfd5"],
  ["GitHub Dark High Contrast", "#71b7ff"],
  ["GitHub Light", "#044289"],
  ["GitHub Light Colorblind (Beta)", "#0969da"],
  ["GitHub Light Default", "#0969da"],
  ["GitHub Light High Contrast", "#0349b4"],
  ["GitHub Dark", "#c8e1ff"],
  ["GitHub Dark Colorblind (Beta)", "#58a6ff"],
  ["GitHub Dark Default", "#2f81f7"],
  ["GitHub Dark Dimmed", "#539bf5"],
  ["Lunar Pink Satellite", "#e621af"],
  ["Lunar Pink", "#e621af"],
  ["Abyss", "#ddbb88"],
  ["Kimbie Dark", "#d3af86"],
  ["Monokai", "#f8f8f0"],
  ["Monokai Dimmed", "#c07020"],
  ["Quiet Light", "#54494B"],
  ["Red", "#970000"],
  ["Solarized Dark", "#D30102"],
  ["Solarized Light", "#657B83"],
  ["Tomorrow Night Blue", "#ffffff"],
  ["One Dark Pro", "#528bff"],
  ["One Dark Pro Flat", "#528bff"],
  ["One Dark Pro Darker", "#528bff"],
  ["One Dark Pro Mix", "#528bff"],
]);

export function activate(context: vscode.ExtensionContext) {
  console.log("Fuck: 扩展激活!!!!!!!!!!!!!!!!!!!!!!!");
  vscode.window.showInformationMessage("Fuck: 扩展激活!!!!!!!!!!!!!!!!!!!!!!!");
  // 注册配置更改的监听器
  vscode.workspace.onDidChangeConfiguration((event) => {
    if (event.affectsConfiguration("workbench.colorTheme")) {
      updateCursorColor();
    }
  });
  updateCursorColor();

  let disposable = vscode.commands.registerCommand(
    "change-ui-by-theme.helloWorld",
    () => {
      updateThemeColorMap();
    }
  );
  context.subscriptions.push(disposable);

  let showColorMapDisposable = vscode.commands.registerCommand(
    "change-ui-by-theme.showColorMap",
    () => {
      showColorMap();
    }
  );
  context.subscriptions.push(showColorMapDisposable);

  let deleteColorMapDisposable = vscode.commands.registerCommand(
    "change-ui-by-theme.deleteColorMap",
    () => {
      deleteColorMap();
    }
  );
  context.subscriptions.push(deleteColorMapDisposable);

  let fuck = vscode.commands.registerCommand("change-ui-by-theme.fuck", () => {
    vscode.window.showInformationMessage("Fuck World.");
  });
  context.subscriptions.push(fuck);

  // 自动关闭侧栏
  // vscode.window.onDidChangeTextEditorSelection((event) => {
  //   vscode.window.showInformationMessage("onDidChangeTextEditorSelection事件触发")
  //   if (event.kind === vscode.TextEditorSelectionChangeKind.Command) {
  //     const activityBarVisibility = vscode.workspace
  //       .getConfiguration()
  //       .get("workbench.activityBar.visible");
  //       vscode.window.showInformationMessage(`${activityBarVisibility}`)
  //     if (activityBarVisibility === true) {
  //       vscode.commands.executeCommand(
  //         "workbench.action.toggleActivityBarVisibility"
  //       );
  //     }
  //     vscode.commands.executeCommand("workbench.action.closeAuxiliaryBar");
  //     vscode.commands.executeCommand("workbench.action.closeSidebar");
  //   }
  // });
}

// 删除映射
function deleteColorMap() {
  const items = Array.from(themeColorsMap.entries()).map(([theme, color]) => ({
    label: theme,
    description: color,
  }));

  vscode.window
    .showQuickPick(items, {
      placeHolder: "当前扩展的主题颜色映射:",
    })
    .then((selectedItem) => {
      if (selectedItem) {
        const { label } = selectedItem;
        showConfirmationDialog(label);
      }
    });
}

function showConfirmationDialog(label: string) {
  const options = {
    title: "确认删除",
    prompt: `确认删除该映射 ${label} 吗？`,
    confirmLabel: "确认",
    // cancelLabel: "取消",
  };

  vscode.window
    .showWarningMessage(
      options.prompt,
      { modal: true },
      options.confirmLabel
      // options.cancelLabel
    )
    .then((choice) => {
      if (choice === options.confirmLabel) {
        deleteColorMapEntry(label);
      }
    });
}

function deleteColorMapEntry(label: string) {
  themeColorsMap.delete(label);
  vscode.window.showInformationMessage(`已成功删除主题映射 ${label}`);
}
// 删除映射

// 展示映射
function showColorMap() {
  const items = Array.from(themeColorsMap.entries()).map(([theme, color]) => ({
    label: theme,
    description: color,
  }));

  vscode.window
    .showQuickPick(items, {
      placeHolder: "所有的映射(不能按):",
    })
    .then((selectedItem) => {
      if (selectedItem) {
        vscode.window.showInformationMessage("Fuck!!!!!!!!!!!!!!!!!!!!!!!!");
      }
    });
}
// 展示映射

// 添加映射
function updateThemeColorMap() {
  vscode.window.showInputBox({ prompt: "请输入主题名称" }).then((themeName) => {
    if (themeName) {
      vscode.window
        .showInputBox({ prompt: "请输入光标颜色" })
        .then((cursorColor) => {
          if (cursorColor) {
            // 将主题名称和光标颜色保存到 themeColorsMap 中
            themeColorsMap.set(themeName, cursorColor);
            vscode.window.showWarningMessage("Fuck: 已保存主题和光标颜色！");
            updateCursorColor();
          }
        });
    }
  });
}
// 添加映射

// 更新光标颜色
function updateCursorColor() {
  const currentTheme = vscode.workspace
    .getConfiguration()
    .get<string>("workbench.colorTheme");
  const cursorColor = getCursorColorFromTheme(
    currentTheme ?? "Visual Studio Dark"
  );
  setCursorColor(cursorColor);
}

// 获取主题
function getCursorColorFromTheme(theme: string): string {
  // 根据当前主题获取鼠标颜色
  const color = themeColorsMap.get(theme);

  if (color) {
    console.log(`Fuck: 找到当前主题 ${theme} 所对应的颜色 ${color}`);
    vscode.window.showInformationMessage(
      `Fuck: 找到当前主题 ${theme} 所对应的颜色 ${color}`
    );
    return color;
  } else {
    // 如果当前主题没有在颜色映射中定义，默认返回一个备选颜色
    console.log(`找不到主题 ${theme} 的鼠标颜色,将默认为黑色`);
    vscode.window.showWarningMessage(
      `Fuck: 找不到主题 ${theme} 的鼠标颜色,将默认为黑色`
    );
    return "#000000";
  }
}
// 获取主题

// 设置光标颜色
function setCursorColor(color: string) {
  // 更新扩展的设置
  // vscode.workspace
  // .getConfiguration()
  // .get("Color")
  // .update("animations.CursorAnimationOptions", { Color: color }, true);
  const cursorConfig = vscode.workspace
    .getConfiguration()
    .get<any>("animations.CursorAnimationOptions");
  cursorConfig.Color = color;

  vscode.workspace
    .getConfiguration()
    .update("animations.CursorAnimationOptions", cursorConfig, true);
  console.log(`Fuck: 已更改鼠标拖尾颜色为${color}`);
  vscode.window.showInformationMessage(`Fuck: 已更改鼠标拖尾颜色为${color}`);
}
