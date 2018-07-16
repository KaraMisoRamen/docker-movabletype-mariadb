# docker-movabletype-mariadb

## 使い方

docker-compose build

docker-compose up

http://localhost/cgi-bin/ でMTの初期設定画面が閲覧できます。
mariadb の 3306 ポータルが使われたら、他のポータルを使いましょう。

追加した機能 docker-sync
静的ファイルいじれるように (/var/www/html/ 配下)、docker-sync を入れた。