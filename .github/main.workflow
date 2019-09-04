name: Rlease PDF files
on:
  create:
    tags:
      - v*.*.*

jobs:
  release-pdf:
    name: Release PDF
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@master

      - name: Make PDF
        run: |
          docker-compose build
          docker-compose run asciidoctor make pdf

      - name: setup Go
        uses: actions/setup-go@v1
        with:
          version: 1.12
        id: go

      - name: Create relase
        env:
          GO111MODULE: on
          GOPATH: /home/runner/work
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: |
          go get -u github.com/tcnksm/ghr
          export TAGNAME=$(jq --raw-output .ref "${GITHUB_EVENT_PATH}")
          ${GOPATH}/bin/ghr -n ${TAGNAME} -b "${TAGNAME}" -draft ${TAGNAME} out/pdf/*.pdf
