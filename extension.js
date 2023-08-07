const fs = require("fs");
const fse = require("fs-extra");
const path = require("path");
const vscode = require("vscode");

/**
 * @param {{ subscriptions: vscode.Disposable[]; }} context
 */
function activate(context) {
  let mobxElementaryGen = vscode.commands.registerCommand(
    "mobx-elementary-generator.mobxElementaryGen",
    async function (uri = vscode.Uri) {
      const c = capitalizeFirstLetter(
        await vscode.window.showInputBox({
          placeHolder: `Enter class name (as Home)`,
        })
      );
      const p_ = snakeCase(c);
      var p = await vscode.window.showInputBox({
        placeHolder: `Enter package name (as home), skip if ${p_} is ok`,
      });
      if (!p) {
        p = p_;
      }
      if (p == undefined || c == undefined)
        vscode.window.showInformationMessage("Cancelled adding a bloc folder");
      else if (p == "" || c == "")
        vscode.window.showWarningMessage("Cannot add empty bloc folders");
      else {
        const copyPath = path.join(uri.fsPath, p);
        const blocPath = copyPath;
        const resPath = path.join(
          vscode.extensions.getExtension(
            "altynbek132.mobx-elementary-generator"
          ).extensionUri.fsPath,
          "resources"
        );
        fse.copySync(resPath, copyPath);
        var files = fse.readdirSync(blocPath);
        for (var file of files) {
          replaceFileWithName(blocPath, file, c, p);
        }
        vscode.window.showInformationMessage(
          `Mobx Elementary folder '${p}' created. Mobx Elementary and components folders can be found in that.`
        );
      }
    }
  );

  context.subscriptions.push(mobxElementaryGen);
}

// this method is called when your extension is deactivated
function deactivate() {}

/**
 * @param {string} blocPath
 * @param {string} [fileName]
 * @param {string} [className]
 * @param {string} [packageName]
 */
function replaceFileWithName(blocPath, fileName, className, packageName) {
  var filePath = path.join(blocPath, fileName);
  fs.readFile(filePath, "utf8", function (err, data) {
    if (err) vscode.window.showErrorMessage(err.message);
    var text = data
      // @ts-ignore
      .replaceAll("Template", className)
      .replaceAll("template", packageName);
    fs.writeFile(filePath, text, function (err) {
      if (err) vscode.window.showErrorMessage(err.message);
      fs.rename(
        path.join(blocPath, fileName),
        path.join(blocPath, fileName.replace("template", packageName)),
        function (err) {
          if (err) vscode.window.showErrorMessage(err.message);
        }
      );
    });
  });
}

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

function snakeCase(PascalCase) {
  return PascalCase.replace(/([A-Z])/g, "_$1")
    .toLowerCase()
    .slice(1);
}

module.exports = {
  activate,
  deactivate,
};
