# 知澜笔记 · Zhilan Notes

![知澜笔记原创品牌插图](assets/brand-cover.jpg)

把日记、引用和复习接成一条线。面向中文用户的 Logseq 本地知识库入门配套。

## 本项目主要解决什么问题

**用 Logseq 搭本地知识库：日记、双链、标签、复习清单；并默认走简体中文界面。**

很多人想用笔记把「每天记一点、互相引用、按标签找、定期复习」串起来，但不想一上来就啃英文界面或复杂编译。本仓库提供：

- 一键启动脚本（`启动.sh`）
- 简体中文设置说明
- 验收用图谱备份与截图
- 方案摘录（如何选官方桌面包、如何验收）

**本仓库不重复分发 Logseq 安装包**（AppImage 约 170MB+）。请从官方 Releases 自行下载，体积小、许可清晰、也便于升级。

> 上游应用： [logseq/logseq](https://github.com/logseq/logseq)  
> 请遵守上游许可证与发布说明。数据库版功能可能仍为 Beta，建议先用测试图谱并做好备份。

---

## 仓库里有什么

| 路径 | 说明 |
| --- | --- |
| [`启动.sh`](启动.sh) | 本地启动入口（需先放入官方 AppImage） |
| [`使用说明.md`](使用说明.md) | 日记 / 双链 / 标签 / 复习 / 备份操作说明 |
| [`graphs/backups/`](graphs/backups/) | 「验收图谱」SQLite 导出示例 |
| [`docs/screenshots/`](docs/screenshots/) | 中文界面与功能验收截图 |
| [`docs/方案/方案-v1-摘录.md`](docs/方案/方案-v1-摘录.md) | 本机运行方案摘录 |

**不会上传**：官方 AppImage、`app/runtime`、完整本地 `graphs/demo` 运行时缓存、cookies / 密钥。

---

## 安装 Logseq（官方包）

以 Linux x86_64 为例（版本号请到官方页核对最新）：

1. 打开 [Logseq Releases](https://github.com/logseq/logseq/releases/latest)
2. 下载 `Logseq-linux-x86_64-*.AppImage`
3. 放到本仓库的 `app/` 目录，并改名或让脚本里的文件名一致：

```bash
mkdir -p app
# 假设下载文件名为 Logseq-linux-x86_64-2.0.2.AppImage
mv ~/Downloads/Logseq-linux-x86_64-2.0.2.AppImage app/
chmod +x app/Logseq-linux-x86_64-2.0.2.AppImage
```

若系统缺 `libsecret` 等依赖，按官方说明或发行版包管理器安装；不要随意关闭 Electron 沙箱。

macOS / Windows 请下载对应官方安装包，图谱目录仍可指向本仓库的 `graphs/demo`。

---

## 启动

```bash
git clone https://github.com/qhe85266-cyber/zhilan-notes-kit.git
cd zhilan-notes-kit
# 先完成上一节「安装 Logseq」
./启动.sh
```

首次打开后：

1. 创建或打开测试图谱（建议目录：`graphs/demo`）
2. **设置 → 语言 → 简体中文**
3. 按 [`使用说明.md`](使用说明.md) 试写日记、双链、`#学习` 标签、复习清单

可选：导入 `graphs/backups/验收图谱-20261015.sqlite` 作为参考（导入方式以当前 Logseq 版本 UI 为准）。

---

## 验收过的能力（摘要）

- 今日日记可写
- 双链（`[[页面]]`）与反向链接可见
- `#学习` 等标签可检索
- 复习清单待办可勾选
- 界面可切换为简体中文并在重启后保持
- 图谱视图可打开（连线/标签显示因版本与数据而异）

截图：[`docs/screenshots/`](docs/screenshots/)

---

## 与「完整汉化版 Logseq」的区别

Logseq **官方已内置多语言**，本仓库不做应用源码汉化，也不重新打包安装文件。这里解决的是：**怎么在本机跑通 + 怎么切中文 + 怎么验收日记/双链/标签/复习**，并留下可复用的脚本与说明。

---

## 许可证说明

- 本仓库自有的脚本、说明文档与截图：可按仓库用途自由学习与修改。
- Logseq 本体及其商标、安装包：版权与许可归 [logseq/logseq](https://github.com/logseq/logseq) 上游，请从其仓库获取并遵守其条款。

## 品牌与截图

「知澜笔记」是本仓库配套材料的名称；Logseq 应用本体、截图中的官方名称和许可继续保留，不冒充自研笔记引擎。封面为原创品牌插图，真实操作截图仍用于说明上游应用。见 [BRANDING.md](BRANDING.md)。
