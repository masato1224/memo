# dockerについて

## 起動中のコンテナに接続する方法
- コンテナIDを取得する
  ```
  ## service名に関連するIDを取得できる
  docker-compose ps -q [service]
  ```

- コンテナに接続
  ```
  docker attach [id]
  ```
## 起動中のコンテナに接続する方法 2
```
./bin/docker-compose-attach [service]
```
## pryを使った場合
```
# どこに居るかわかる
whereami
```