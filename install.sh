#!/bin/sh

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# シンボリックリンクを作成
# $1: ファイル名
# $2: リンク先ディレクトリ
function link_dotfile() {
    file_name=$1
    # to_dir=$HOME
    to_dir=$2

    from_file=${PWD}/$file_name
    to_file=$to_dir/$file_name
    # バックアップ作成
    # バックアップディレクトリは$2内
    backup_dir=$to_dir/.dot_backup/
    backup_file=$backup_dir$file_name.$timestamp
    # ファイルが存在する(-e)またはシンボリックリンク(-L)
    if [ -e $tof_file -o -L $to_file ]; then
        echo "move: $to_file => $backup_file"
        # ディレクトリ作成 pオプションはいいのか？
        mkdir -p $backup_dir
        mv $to_file $backup_file
    fi
    echo "link: $from_file => $to_file"
    mkdir -p $to_dir
    ln -s $from_file $to_file
}

link_dotfile .vimrc					$HOME
link_dotfile .zshrc					$HOME
link_dotfile .zshrc.antigen		$HOME
link_dotfile .tmux.conf		$HOME