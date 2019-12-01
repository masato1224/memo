# gitでやること
## 初期設定
```
git config --global user.email xxxxx@xxx.xx.xx
git config --global user.name YYYYYY
```
## 既存のコードがある場合
1. local repositoryの作成
    ```
    # rootディレクトリ
    git init
    git add -A
    git commit -m init
    ```
1. remote repositoryの作成  
    - お好きなサービスでrepositoryを作る
    - ssh keyを登録

1. remote repositoryにpush
    ```
    git remote add origin git@github.com:XXXXXX/YYYY.git
    git push -u origin master
    ```

## git エリアスの作成
```
git config --global alias.st status
```