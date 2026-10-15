#!/usr/bin/env bash
# 启动本仓库配套的 Logseq（需先按 README 下载官方 AppImage 到 app/）
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
APPIMAGE="$ROOT/app/Logseq-linux-x86_64-2.0.2.AppImage"
GRAPHS_DIR="${LOGSEQ_GRAPHS_DIR:-$ROOT/graphs/demo}"
RUNTIME_LIB="$ROOT/app/runtime/usr/lib/x86_64-linux-gnu"

if [[ ! -x "$APPIMAGE" ]]; then
  echo "未找到可执行的 AppImage: $APPIMAGE"
  echo "请先按 README「安装 Logseq」一节，从官方 Releases 下载 Linux x86_64 AppImage 到 app/ 目录并 chmod +x。"
  exit 1
fi

mkdir -p "$GRAPHS_DIR"
export LOGSEQ_GRAPHS_DIR="$GRAPHS_DIR"
if [[ -d "$RUNTIME_LIB" ]]; then
  export LD_LIBRARY_PATH="$RUNTIME_LIB${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi
exec "$APPIMAGE" "$@"
