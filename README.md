# robosys2024

# 内容
- .github/workflows  
GithubActions用のプログラム
- COPYING  
ライセンスに関する文章
- README.md  
この説明書
- count  
入力されたテキスト内の各文字の出現回数を数え、その結果を出力するプログラム
- testcount.bash  
countのテストプログラム

![test](https://github.com/Wataru0619/robosys2024/actions/workflows/test.yml/badge.svg)
GithubActionsによるテスト結果バッジ

# 使用方法
- count
1.リポジトリをクローンし、プログラムがあるディレクトリに移動します。 
``` 
git clone https://github.com/Wataru0619/robosys2024.git  
cd robosys2024/count_kadai1  
```
2.必要に応じて実行権限を付与します。  
```
chmod +x count  
```
3.ターミナルから以下のコマンドを実行。  
```
echo "カウントしたい文章" | ./count  
```
4.各文字の出現回数がカウントされ、出力されます。　　


# 動作環境
- OS:Linux
- Python:3.7~3.10

# ライセンス
- このソフトウェアパッケージは，GPL3.0ライセンスの下，再頒布および使用が許可>されます．
- © 2024 Wataru Suenagia
