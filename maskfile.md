# Tasks for development

## init

事前準備

- lefthookがインストールされていること
- Rubyが実行可能なこと

やること

- precommitのセットアップ
- rufoのセットアップ

```sh
bundle install
lefthook install
```

## install

```sh
./install.sh
```

## format

コードのフォーマットを実行

```sh
lefthook run rb-format
lefthook run sh-format
```
