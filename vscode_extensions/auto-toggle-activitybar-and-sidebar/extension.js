const vscode = require("vscode");
/**
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
    context.subscriptions.push(
        vscode.window.onDidChangeTextEditorSelection((e) => {
            if (e.kind == 1) {
                const activityBarVisibility = vscode.workspace
                    .getConfiguration()
                    .get("workbench.activityBar.location");
                // vscode.window.showInformationMessage(`${activityBarVisibility}`);
                if (activityBarVisibility === 'side') {
                    vscode.commands.executeCommand(
                        "workbench.action.toggleActivityBarVisibility"
                    );
                }
                vscode.commands.executeCommand("workbench.action.closeAuxiliaryBar");
                vscode.commands.executeCommand("workbench.action.closeSidebar");
            }
        })
    );
}
function deactivate() { }
module.exports = {
    activate,
    deactivate,
};
