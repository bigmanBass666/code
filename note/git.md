# git note

## 删除.git 文件

在 Windows 中，可以通过以下命令删除.git 文件夹：`rd /s /q .git` 或 `rm -rf .git`

## 忽略SSL证书验证

```cmd
git config http.https://github.com/paeonia-lactiflora/zyzx-official-website-mobile.git.sslVerify false
```

这条命令告诉Git在访问指定的 GitHub 仓库时忽略 SSL 证书验证。请将 <https://github.com/paeonia-lactiflora/zyzx-official-website-mobile.git> 替换为你实际的仓库 URL。
