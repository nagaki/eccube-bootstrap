#eccube bootstrap
EC CUBEデフォルトのPCテーマをHTML5に書換え、twitter bootstrapのcssを適用したレスポンシブなベース用テーマです。

##主な変更点
* レスポンシブに対応
* XHTMLからHTML5に書換
* imgボタンを全てテキストに変更

##バージョン
EC CUBE v2.12

##インストール
1. EC CUBEルートディレクトリにコピーします。

    ```bash
    $ git clone https://github.com/nagaki/eccube-bootstrap.git
    $ cp -R eccube-bootstrap/* ~/path/to/eccube/
    $ cp -R eccube-bootstrap/.* ~/path/to/eccube/ #gitファイルコピー
    ```
2. データベーステーブル`dtb_templates`に値を追加します。

    ```mysql
    mysql> INSERT INTO dtb_templates VALUES ("bootstrap", 10, "bootstrap", now(), now());
    ```

3. 管理画面メニュー デザイン管理>PC>テンプレート設定よりテンプレートを変更します。

##スマートフォンテーマ
レスポンシブテーマなので、`data/class/SC_Display.php`にあるスマートフォン判定のコードを削除することで使用できます。

```php
// data/class/SC_Display.php:141
function detectDevice() {
  $nu = new Net_UserAgent_Mobile();
  $su = new SC_SmartphoneUserAgent_Ex(); //削除
  if ($nu->isMobile()) {
    return DEVICE_TYPE_MOBILE;
  } elseif ($su->isSmartphone()) { //削除
    return DEVICE_TYPE_SMARTPHONE; //削除
  } else {
    return DEVICE_TYPE_PC;
  }
}
```
