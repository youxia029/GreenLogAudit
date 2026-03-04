# GreenLogAudit 使用说明

## 重要：默认登录信息（请先阅读）
- 用户名：`admin`
- 默认密码：`ChangeMeNow!`

**请保存好密码，一旦遗失密码将无法找回。**

## 启动方式
- 双击 `GreenLogAudit.exe`（默认无控制台窗口）。
- 关闭主窗口默认最小化到系统托盘。
- 仅点击“退出程序 / Exit”才会真正退出。

## Web 地址
- 默认：`http://127.0.0.1:8080`
- 若修改端口，请查看 `config.yaml` 的 `http_port`。

## 多语言
- Web 支持：`en` / `zh-CN` / `zh-TW` / `de` / `fr` / `ja` / `es` / `ru` / `ko`
- 首次按浏览器语言自动选择，后续记住上次选择。
- Windows 控制面板右上角提供“网页语言 / Web UI Language”下拉框，自动记忆选择。

## 服务管理
- `install.bat`：安装并启动 Windows 服务（需管理员权限）。
- `uninstall.bat`：停止并卸载 Windows 服务。

## 安全建议
- 默认仅允许本机访问 Web。
- 如需局域网访问，请修改 `config.yaml` 中 `allowed_cidrs`。

## 版权信息
- 作者：张百川（网路游侠）
- 个人网站：https://www.youxia.org
- 微博：https://weibo.com/zhangbaichuan
- 邮箱：baichuan.zhang@foxmail.com
