# file_backup
ドラッグ＆ドロップされたファイルをバックアップします。
バックアップは、ファイルと同じディレクトリのなかにあるoldフォルダーに退避します。
oldフォルダーがない場合は、自動的に生成します。

create "old" folder and backup input file with backup datetime 
this is windows batch file.


# Install and Setup

ソースコードをcloneします。フォルダーは、適当な場所においてください。
git clone and move directory where you like.


`git clone git@github.com:mskzshny/file_backup.git`


エクスプローラを起動し、アドレスバーに`shell:sendto`と入力して、sendtoフォルダーを開きます。
open windows explorer and input `shell:sendto` in addrress bar.

![クイックアクセスのところにshell:sendtoと入力する](./explorer_address_bar.PNG "クイックアクセスのところにshell:sendtoと入力する")

sendtoフォルダにfile_backup.batのショートカットを作成します。　create `file_backup.bat` short cut in sendto filder.

![](./sendto.PNG "")

# How to use

1. バックアップしたいファイルを右クリックして、送る＞`file_backup.bat`を選択すると、バックアップを開始します。
    ![](./sendto_file_backup.PNG "")
1. コマンドプロンプトが起動しバックアップが行われます。
       ![](./cmd.PNG "")
2. バックアップされたファイルを確認します。

