# Action-text
## 何？
 - trixを使用したWISWIGエディター
 - action_storageが一緒にinstallされる
 - image_processingが必要

## install
```
rails action_text:install
rails db:migrate

```
## usege
```
  # add to model
  has_rich_text :content
```

## その他
- railsのタスク一覧
```
./bin/rails -T
```