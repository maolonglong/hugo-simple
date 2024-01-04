alias s := server
alias serve := server
alias b := build

default:
  just --list

server:
  hugo server -D --source ./exampleSite --themesDir ../..

build:
  hugo --minify --gc --destination ../public --source ./exampleSite --themesDir ../.. --baseURL https://maolonglong.github.io/hugo-simple/

fmt:
  bun run fmt

clean:
  rm -r public
