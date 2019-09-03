# try-asciidoctor

Asciidoctorでドキュメントを作成するための検証用リポジトリです。

dockerでAsciidoctorの実行環境を作成しているので、以下のコマンドで試すことができます。

```bash
$ docker-compose up -d --build
$ docker-compose exec asciidoctor make
```

`make`で指定できるターゲットはMakefileを確認してください。
