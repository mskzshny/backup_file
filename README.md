# このプログラムについて　file_backup
ドラッグ＆ドロップされたファイルをバックアップします。
バックアップは、ファイルと同じディレクトリのなかにあるoldフォルダーに退避します。
oldフォルダーがない場合は、自動的に生成します。

This program creates "old" folder and backup input file with backup datetime 
this is windows batch file.


# Install and Setup

ソースコードをcloneします。フォルダーは、適当な場所においてください。
git clone and move directory where you like.


`git clone git@github.com:mskzshny/file_backup.git`


エクスプローラを起動し、アドレスバーに`shell:sendto`と入力して、sendtoフォルダーを開きます。
open windows explorer and input `shell:sendto` in addrress bar.

![](./img/explorer_address_bar.PNG "")

sendtoフォルダにfile_backup.batのショートカットを作成します。　create `file_backup.bat` short cut in sendto filder.

![](./img/sendto.PNG "")

# How to use

1. バックアップしたいファイルを右クリックして、送る＞`file_backup.bat`を選択すると、バックアップを開始します。
    ![](./img/sendto_file_backup.PNG "")
1. コマンドプロンプトが起動しバックアップが行われます。
       ![](./img/cmd.PNG "")
2. バックアップされたファイルを確認します。
       ![](./img/old_folder.PNG "")
    
    バックアップを実行した秒までの日時が、ファイル名についています。

# 備考、注意事項

 - `(`　`)` 半角のかっこのあるファイル名は、コピーできないようです。
 - フォルダーもコピーできますが、念の為コピー後フォルダーとコピー前フォルダーのファイル数が一致しているか確認してください。
 - `file_backup.bat`ファイルをデスクトップにおいて、バックアップしたいファイルをドラッグ＆ドロップする方法もあります。