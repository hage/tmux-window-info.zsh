# tmuxtabinfo.zsh
Display information in tmux tab.

## usage

`source tmuxtabinfo.zsh`

## 概要

tmux のタブに様々な情報を表示します。

* プロジェクト名 (.git のあるディレクトリ名)
* カレントディレクトリ

zsh の以下の hook にタブをリフレッシュする zsh function を登録します。

* `chpwd`

`precmd` に登録しないのはプロンプトの表示が重くなりそうだからです。
