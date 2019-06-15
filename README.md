# tmuxtabinfo.zsh
Display information in tmux tab.

tmux のタブに様々な情報を表示します。

* プロジェクト名 (.git のあるディレクトリ名)
* git のブランチ

zsh の以下の hook にタブをリフレッシュする zsh function を登録します。

* `chpwd`
* `periodic`

`precmd` に登録しないのはプロンプトの表示が重くなりそうだからです。
