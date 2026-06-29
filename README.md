# mkv – Vue 组件快速生成器（Windows 批处理）
> *A lightweight Windows batch script to quickly scaffold Vue 3 components with a default template.*

## 简介 | *Introduction*
这是一个轻量级的 Windows 批处理脚本，在当前目录下根据传入路径批量生成 Vue 3 组件文件，并写入默认的 `<script setup>` + `<template>` + `<style scoped>` 模板。 

*This is a lightweight Windows batch script that generates Vue 3 component files based on the provided relative paths, and writes a default template with `<script setup>`, `<template>`, and `<style scoped>`.* 支持**批量创建多个组件**，全程静默无输出，符合 Linux 哲学风格。 *It supports batch creation of multiple components, with silent output (no noise) – following the Unix philosophy.*

## 功能特点 | *Features*
- **批量创建** – 一次命令生成多个组件文件。 *Batch creation – generate multiple components with one command.*
- **自动建目录** – 如果路径包含子目录，自动创建。 *Auto‑mkdir – creates parent directories automatically.*
- **静默运行** – 成功时无任何输出，失败时仅报错。 *Silent mode – no output on success, only errors.*
- **默认模板** – 写入 Vue 3 标准模板（`<script setup>` + `<template>` + `<style scoped>`）。 *Default template – writes a standard Vue 3 scaffold.*
- **零依赖** – 仅需 Windows 原生 CMD，无需安装任何额外软件。 *Zero dependencies – uses only native Windows CMD.*

## 系统要求 | *Requirements*
- Windows 操作系统（已在 Windows 10 / 11 上测试） *Windows OS (tested on Windows 10 / 11)*
- 无其他依赖 *No other dependencies*

## 安装 | *Installation*
1. 下载 `mkv.bat` 到任意文件夹。 *Download `mkv.bat` to any folder.*
2. （可选）将该文件夹添加到系统 `PATH` 环境变量，以便在任意位置直接运行。 *(Optional) Add that folder to your `PATH` to run from anywhere.*

## 使用方法 | *Usage*
在项目根目录（即 `package.json` 所在目录）打开命令提示符： *Open command prompt in your project root (where `package.json` is located):*
```cmd
mkv components/Header components/Footer views/About
```
脚本会在当前目录下生成： *The script will generate:*
```
components/Header.vue
components/Footer.vue
views/About.vue
```

### 静默特性 | *Silent behavior*
- **成功时**：无任何输出，直接返回。 *On success: no output, returns silently.*
- **失败时**：输出错误信息（如权限不足、磁盘已满等）。 *On failure: outputs error messages (e.g., permission denied, disk full).*
- **无参数时**：静默退出，不显示帮助信息。 *No arguments: exits silently without showing help.*

## 默认模板 | *Default Template*
生成的每个 `.vue` 文件内容如下： *Each generated `.vue` file contains:*
```vue
<script setup>
</script>

<template>
  <h1>You did it!</h1>
</template>

<style scoped>
</style>
```
如需修改模板，直接编辑 `mkv.bat` 中 `echo` 后面的内容即可。 *To modify the template, edit the `echo` lines in `mkv.bat`.*

## 注意事项 | *Notes*
- 脚本以 **当前工作目录**（`%cd%`）为根，而非脚本所在目录。 *The script uses the **current working directory** (`%cd%`) as root, not the script's own location.*
- 如果文件已存在，**会被覆盖**，请谨慎使用。 *Existing files **will be overwritten** – use with caution.*
- 路径分隔符请使用 `/` 或 `\`，均支持。 *Use `/` or `\` as path separators – both work.*

## 许可证 | *License*
本脚本采用 [MIT 许可证](LICENSE)，可自由使用、修改和分发。 *This script is provided under the [MIT License](LICENSE) – feel free to use, modify, and distribute.*
