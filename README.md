eccube bootstrap
======

EC CUBE用のTwitter Bootstrapテーマ


バージョン
------
+ **EC CUBE** (version 2.12.1)
+ **Twitter Bootstrap** (version 2.1)


インストール
------
1. [eccube-bootstrap.tar.gz](https://github.com/downloads/nagakiatsushi/eccube-bootstrap/eccube_bootstrap.tar.gz) からファイルをダウンロード
2. 管理画面＞デザイン管理＞PC＞テンプレート追加 からファイルを登録
3. 管理画面＞デザイン管理＞PC＞テンプレート設定 でテンプレートを変更


レスポンシブの適用
------

    // data/class/SC_Display.php:141

    function detectDevice() {

      $nu = new Net_UserAgent_Mobile();
      $su = new SC_SmartphoneUserAgent_Ex();  <-- 削除

      if ($nu->isMobile()) {
        return DEVICE_TYPE_MOBILE;
      } elseif ($su->isSmartphone()) {        <-- 削除
        return DEVICE_TYPE_SMARTPHONE;        <-- 削除
      } else {
        return DEVICE_TYPE_PC;
      }

    }

