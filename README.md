# FlashTools-Lua-Editor
## description
Lua Script Editer on Browser
for Toshiba FlashAir W-04

https://sites.google.com/site/gpsnmeajp/tools/flashair_tiny_lua_editer

## installation
1. Place in sd card root directory.
2. Connect Wi-Fi.
3. Open browser and type in "http://192.168.0.1/"

## Dependent library
codemirror : https://github.com/codemirror/codemirror

jquery : https://github.com/jquery/jquery


---

  
  
FlashTools Lua Editor (FTLE)  
  
 FlashTools Lua Editor  
概要(Abstract)  
Browser上で動くLuaスクリプトエディタです。  
もうSDカードスロットが壊れる心配をする必要はありません。  
  
ダウンロードはリリースからどうぞ。  
  
Lua Script Editer on Browser.  
You don't have to worry about SD-slot corruption anymore.  
  
Click link in page bottom to Download.  
FlashAirのLuaスクリプトの編集、面倒ではありませんか？  
例えば、FlashAirでLuaスクリプト開発を行うには以下の方法があります。  
1. PCのSDカードスロットに指し、スクリプトを書き込んで、目的の基板に挿しなおして、動作を確認して、再度PCのSDカードスロットに...  
2. WebDAVを使い、編集しては転送、編集しては転送...  
3. HTTPサーバーを用意し、スクリプト実行時にそのサーバーからスクリプトをロードするようにする。  
4. FlashTools Lua Editorを使い、ブラウザ上で編集・書き込み・実行を1ボタンで行う。  
  
というわけで、編集～実行を簡単に、高速に行えるようにした環境です。  
  
まったく設定もしていないFlashAirに、解凍してD&D。  
あとはPC、スマートフォンやタブレットのお好きな機器からFlashAirに接続。  
ブラウザでAutoSetupを実行するだけで、あとはLuaの編集・実行・Lチカが簡単にできます。  
  
スクリーンショット(Screen Shots)  
  
使い方(How to use)  
[[>>ここをクリック(Ckick here)<<]](https://seesaawiki.jp/flashair-dev/d/Lua%3a%b3%ab%c8%af%a4%ce%c1%b0%a4%cb...)  
(GIFアニメによる解説が再生されます)  
  
1. FlashTools.zipをダウンロード  
2. 解凍し、出来たファイルをすべてFlashAirにコピー(フォルダもそのまま)  
3. ブラウザからFlashTools.luaを開く  
4.「Auto Setup」ボタンを押す。  
  
インストールに失敗した場合、FlashAirが使用できなくなる可能性があります。  
重要なデータ・写真はバックアップし、壊れても良いFlashAirを用いてください。  
  
  
How to use.  
  
0. back up files in FlashAir.  
1. unzip downloaded file and put in the Flashair's root directory.  
3. Connect FlashAir Wi-Fi. andAccess http://flashair/FlashTools.lua  
4. Press "Auto Setup" Button.  
5. re-Insert  
6. Press "FlashTools Lua Editor"  
7. Write Lua script  
8. Press Run(can't break) or Debug(can break)  
  
注意  
Lua機能搭載版FlashAir(W-03およびW-04)にのみ対応しています。  
安価なFlashAir(W-02) (Lua機能なし)は利用できませんのでご注意ください。  
  
PCのローカル上では動作しません。  
必ず、FlashAirに置き、FlashAir上にWi-Fi経由でアクセスしてご利用ください。  
スマートフォンなどからでも多分使えます(iPadで動作確認)  
  
注意: FlashAirは、PUTした時自動でホスト機器からの書き込みをロックするようです。  
SDカードを挿し直すか、unlockをクリックするとロックが解除されます。  
  
本ソフトウェアは、東芝およびフィックスターズの公式ソフトウェアではありません  
お問い合せは、@Seg_faulまでお願いします。  
  
更新履歴  
v0.1 初公開  
  
v0.1a run.lua.txtに一時保存する方式ではなく、read.luaを用いてluaファイルを直接読み出す方式に変更  
  
v0.1b IEでキャッシュされてしまうため、キャッシュコントロールを追加  
zipを解凍するのも面倒な環境(?)のために、Luaスクリプト製インストーラ追加。  
  
v0.1c (install.luaのみ更新)  
CONFIGを、WEBDAVのみでなく、UPLOADおよびIFMODEも設定するように変更  
install.luaで導入される説明書を簡易版に変更。  
install.luaで導入される初期スクリプトを、AirioのLチカに変更(白色点滅)  
  
v0.1d (install.luaのみ更新)  
とりあえず、インストールメニューに英語併記。READMEは未翻訳。  
v0.1e debug時に、エラーがないのにエラー表示をしたり、エラーがあるのに出なかったりという重大バグを修正しました。  
  
v0.2 CodeMirrorを使用し、エディタをハイライト・行番号・検索・置換対応に。  
IEキャッシュ問題に対応。複数ファイル対応。ショートカットキー対応。デザイン変更。  
v0.3 Luaファイル限定だった編集機能を全ファイルに解禁。(常にLuaファイルとしてハイライトが働きます)  
ファイル名指定を絶対パスに。  
ファイルが散らかっていたのでフォルダ構造化。  
CONFIGファイル編集機能を付加。それに合わせ、保存時改行コードをCRLFに統一  
FlashToolsとして、メニュー機能を搭載。FlashAir IO Testerを統合。  
FTLE Lite版を統合、メニューから選択可能に。  
debug機能が常にrun.luaで動作するバグを修正。  
事故防止の為ファイル名変更後、LoadしないでSave/run/debugを行う場合に警告を出すように。  
エディタのサイズ等の微調整。  
v0.31 恥ずかしいスペルミスの修正  
モバイル端末向けに画面のデザインを最適化する機能を追加。  
(PCでも、ウィンドウを小さくした際に作動します。)  
存在しないファイルを読み込むと404エラーを表示するように変更。  
エディタから移動する際に確認メッセージを表示する機能追加。  
favicon.icoをダミーのものから、画像に変更。  
Lite版が機能していなかったバグを修正。  
Lite版でもdebug機能が正常に動くよう修正。  
引数をURLエンコードする用に修正(通常版・Lite版共に)。  
v0.31a viewportを固定にし、意図しない拡大がされないように設定。  
    ボタンのデザインがiOSでしょぼくなる問題を対処。  
メニューがしょぼすぎる問題を対処。  
Unlock機能が動作しないバグを修正。  
v0.31b IO_TEST.htmが動作しなくなっていたバグを修正。  
トップページにせっかくなのでアイコンを出すように変更。  
v0.31cIEで動作しない不具合を修正。  
セーブ時問い合わせ処理がうまく動いていなかった不具合を修正。  
意図しないpreが付いていた不具合を修正(切り替えられるように)  
合わせてdebug.luaもHTML的に修正。  
IO_TESTのボタンがしょぼい不具合を修正。  
タイトルにバージョン情報を追加するよう修正。  
チェックボックスなどの大きさがFireFoxで意図した大きさにならない不具合修正。  
画面の縦幅の変更時にウィンドウサイズ変更として反応していたバグを修正。  
パフォーマンスタイマの間隔を長く変更。  
v0.31c1 自動セットアップ機能を追加。設定ファイルの書き換えを自動でやります。  
ファイルチェック機能追加。正しい場所にファイルがないと、メニューでエラーが出ます。  
足りないファイルを指摘する機能付き。  
  
v0.31d FlashAirTinyLuaEditorから、FlashTools Lua Editorに改名。  
     FlashAirの名前をつけると公式と誤解されかねないことと、もうTinyではないことから。  
     cssやjsを軽量化。ファイルサイズが全体でほぼ半分に。  
     edit.htmのスクリプトやスタイルシートを外部ファイルに分離。  
     Lite版のunlockボタンが機能していなかった不具合を修正。  
  
v0.31d1 IO Testerのピンアサインの記載を増加。  
v0.31d2 IO Testerのピンアサインの誤記を修正  
v0.31d3 IO Testerが見づらい問題を解決。サンプルスクリプトがMobile Safariでうまくいかない問題を解決。  
メニューの見た目を調整。  
  
v0.32 URLの引数にファイル名を渡したり、preの状態を渡したりして起動できるよう変更。  
Sampleを追加。サンプルスクリプト4種を追加。  
FlashAir本体のバージョンチェックを導入。古い場合はメニューにて警告。  
  
v0.32a1 SampleおよびlibにlibAE_FAIOを追加。  
v0.32a2 Pocket Reference追加。メニューに追加情報を表示するように。  
v0.32a3 バージョンチェックをdebugにも導入。  
同梱ライブラリを更新。新たにlibAirioRPを追加。  
サンプル更新。AirioRP用のサンプルを追加。  
メニューのバージョンチェックの方式を変更。少し軽くなった  
  
v0.32b アップデートともに動かなくなったメニューを修正して動くように。  
バージョンチェックを変更し、W3.00.02以外の場合はアップデートを推奨するように  
AutoSetupのしつこさを排除  
  
v1.00  javascriptを全面書き直し。コア機能の再実装。  
WebWorkerによるXHRの同期化  
余計なボタンの削除、デザインの再構成  
Lite版の削除、サンプル集の削除  
内蔵ライブラリの削除  
codemirrorの更新  
read.luaのメモリ不足防止処理追加  
eva.cgiへの対応(debugの意味がほぼなくなりました)  
エラーメッセージの詳細化、例外に対応  
HTMLのリファクタリング  
フォルダの整理、メニューのファイルチェック機能の削除  
  
v1.01 エラーメッセージの解析による行ハイライトの実装  
クリーンフラグにより、不要な脱出警告の消去  
404の処理の適正化  
エラー検出処理がバグっているのを修正  
v1.02 debug.luaで文法エラーの表示ができるように  
サンプルスクリプトへのリンクを追加  
  
v1.03  saveに失敗後もrunやdebugを継続しようとするバグ修正  
AutoSetupでTELNETやREDIRECTを設定するように変更。  
アイコンを新しいバージョンに  
関数一覧へのリンク追加  
Control Panel追加。アップロードやWiFi遮断などを手軽にできるように。  
Donationの追加  
  
v1.04 Break機能を追加。Breakボタンをおすことで無限ループから抜けることができます。  
※Debugモードで実行中のみ動作します。  
※共有メモリの先頭1Byteを専有します。(実行開始時に-となり!が書き込まれるとBreak)  
Debugモードの仕様を変更しシンプル化。W-04でのみ動作するようになりました。  
Debugモード時のArgの挙動を変更。  
tinybreakable.luaを同梱するように。(書き換えるとDebug時の挙動も変化します)  
  
v1.05  debug.lua側にW-04検出機能を搭載  
  workerのdebug警告を変更。(低速になる警告を表示)  
  tinybreakable.luaを簡略化  
  breakpoint.luaを追加。RunモードでもBreak可能に  
  breakpoint(), putMessage()を追加  
  GetMsg(F9)ボタンを追加。putMessage(共有メモリ0x01-0xFF)のデータを実行中に表示可能。連打。  
  javascript側での応答時間測定機能を追加  
  ※W-03ではWebサーバーの仕様上Breakが効きません  
  サンプルスクリプトrun.luaを更新。  
  
v1.05a IEで動かない問題を修正  
  
v1.06 List.htmを追加。エディタをダイレクトに起動できるように。  
FlashAirのList.htmとはメインメニューから切り替えが可能です。  
  
v1.06a List.htmに自動リロード機能を搭載。リロードボタンを搭載。  
IEでファイルが中々反映されない(キャッシュにとらわれる)問題の修正。  
  
v1.06b アップロード機能の搭載、ファイルの削除機能の搭載。  
Luaによる隠しフォルダ含めた全てのディレクトリ表示機能の追加  
(注意: W-04のアップロード機能はファイル破損が発生しやすいです。  
また、Lua実行中にLuaファイルリスト機能は使用できないためオプションになっています)  
  
v1.06c バグ修正  
  
v1.07 W-04 4.00.01のprint文低速化に対応  
FlashTools.luaの高速化、CSSの調整  
Version判定の変更  
read.luaの高速化(24秒→1.5秒)に。(W-03はサポート対象外になりました。一応フォールバック動作します)  
ファイラーの読み込みを若干高速化  
ファイラーの拡張制限を解除  
ファイラーに新規ファイル作成・フォルダ作成・ファイル移動(名前変更)機能を追加  
ファイラーのデザインを抜本的に変更  
ファイラーおよびエディタの空白文字ファイルに対する異常動作の修正  
  
v1.07a 不具合修正アップデート  
メニューに更新情報表示機能を追加  
ファイルメニューのデザイン調整(iPadでの破綻対策、PCでの幅を広く、レスポンシブに、長いファイル名が切れる不具合の修正)  
タイムアウト時の表示が出なくなっていた不具合修正  
URLのパスを無視してルートを表示する不具合修正  
フォルダパスを参照するためのリンクを追加  
Loadingがなくなっていたのを修正  
拡張子での編集モードの自動変更(Code mirror Lazy modeの有効化、ほぼ全ての拡張子に対応)  
codemirrorを更新  
インデント幅を4に変更(作者の好みです)  
IEだけ..の判定が狭い不具合の修正  
Remove All Filesが、IEだけ切れてキーワードが見えない不具合の修正  
  
v1.07b 不具合修正アップデート  
W-04 V4.00.03 にてGetMsgが正常に動かない不具合を修正(ヌル文字検出とヌル文字付加を追加)  
FlashAirバージョンチェックを更新  
  
※Windows DefenderがZip圧縮されたjsファイルを誤検出してトロイの木馬扱いしますが、  
他のウィルス対策ソフト及び、オンラインマルチスキャンではウィルスを検出しないことを確認しています。  
Windows Defenderをお使いの方は、解凍し、SDカード上にコピーするまで、一時的に無効にして使用してください。  
(解凍後は誤検出は発生しないようです)  
