# svelt3

## 公式サイト

<https://svelte.dev/>

## sveltとは？

+ jsのコンパイラ
  + react、vue、angulerの様なライブラリじゃない
  
## どんな特徴があるの？

+ write less code
  + reactとかと比べてシンプルな記述
+ no virtual dom
  + バニラJsにコンパルされる、動作が高速。
+ truly reactive
  + 状態管理にライブラリを導入する必要がない

→ 小規模な開発やプロダクトに最適？？

### styling

```js
// sample.js
<style>
 p {
  color: purple;
  font-family: 'Comic Sans MS', cursive;
  font-size: 2em;
 }
</style>

<p>This is a paragraph.</p>
```

スコープがコンポーネント(sample.js)に閉じている

## 開発環境

+ [公式サイト_ブログ](https://svelte.dev/blog/svelte-for-new-developers)
+ Node.jsは必要
+ VSCodeが便利
  + 拡張機能がある
    + <https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode>

### 初期化(typescript化)

```sh
cd {任意のディレクトリ}
npx degit sveltejs/template {プロジェクト名}
cd {プロジェクト名}
node scripts/setupTypeScript.js
npm install
```

### 実行

```sh
npm run dev
```

### 確認

ブラウザで以下にアクセス

<http://localhost:5000/>

## 気になること

+ バケツリレーは起こりそう

## merkdown

これでOK

```js
 import marked from 'marked';
```

```js
{@html marked(value)}
```
