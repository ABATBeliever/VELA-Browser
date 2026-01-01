# VELA Browser - Vital Environment for Liberty Access

![License](https://img.shields.io/badge/license-GPLv3-blue.svg)
![Version](https://img.shields.io/badge/version-1.2.0-green.svg)
![Version](https://img.shields.io/badge/Language-Python-yellow.svg)

---

<h1>注意！</h1>
現在、MSVCとnuitkaの互換性の問題から、Windows版のビルドが困難になっており、バージョンは1.2.0で凍結されています。

バージョン1.1.0～1.2.0には**オフライン環境でソフトがクラッシュする**という問題が報告されています。

暫定的な対応策として、オフライン用途で使用する場合は**「--update-disable」**の引数をつけて起動してください。

ただし、この対応策をとっている間は更新確認を行わないため、注意してください。

---

## 概要

<img width="1900" height="1023" alt="image" src="https://github.com/user-attachments/assets/a59498a8-e5e9-42eb-855e-fc1c5200719b" />

VELA（Vital Environment for Liberty Access）は、PyQt6 と QtWebEngine を利用して開発された、軽量で拡張性の高いマルチプラットフォームブラウザです。  
**プライバシー配慮、移植性、必要な機能に特化**

---

## 入手

[こちら](https://github.com/ABATBeliever/VELA-Browser/releases) からお使いの環境に合わせてダウンロードしてください。インストールはありません。
1.1.0以降、自動更新が可能です。

---

## 主要機能

- Chromium ベースのレンダリング（QtWebEngine）
- タブブラウジング（起動時の復元機能付き）
- ブラウザレベルのトラッキング防止、広告ブロック（EasyList などの定義ファイルを利用可能）
- プライベートブラウジングモード
- UserAgent のランダム化（最新近辺の Microsoft Edge に偽装、起動ごとに変化）
- ブックマーク / 履歴のエクスポート・インポート
- デベロップツールあり
- 水平タブをネイティブサポート

---

## 動作環境・対応状況

| OS                      | アーキテクチャ | 対応 |
|-------------------------|---------------|------|
| Windows 11 以降          | x64           |対応済|
| Linux Debian 系          | x64           |対応済|
| Raspberry Pi Trixie 以降 | aarch64       |対応済|
| macOS | aarch64       |サードパーティによる対応|

※arm版Windows、macOS、及びLinuxは今後対応予定です

---

## ライセンス

VELA Browser は **GNU General Public License (GPL)** に基づいて配布されています。  
また、本プロジェクトは 猫星吹恋氏の [EQUA-Portable](https://github.com/Keychrom/Project-EQUA-Portable) の派生です。

---

## クレジット / サードパーティライブラリ

- Qt (Qt Company)  
- QtAwesome  
- QtWebEngine  

各ライブラリのライセンスはそれぞれの配布元に準拠します。

---

## 連絡先

- **作者:** ABATBeliever  
- **リポジトリ:** [https://github.com/ABATBeliever/VELA-Browser](https://github.com/ABATBeliever/VELA-Browser)  
- **問題報告:** [https://github.com/ABATBeliever/VELA-Browser/issues](https://github.com/ABATBeliever/VELA-Browser/issues)  
- **公式ページ:** [https://abatbeliever.net/app/VELABrowser/](https://abatbeliever.net/app/VELABrowser/)
