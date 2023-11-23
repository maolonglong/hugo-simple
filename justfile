alias s := server
alias serve := server
alias b := build

default:
  just --list

server:
  hugo server -D --source ./exampleSite --themesDir ../..

build:
  hugo --minify --gc --destination ../public --source ./exampleSite --themesDir ../.. --baseURL https://maolonglong.github.io/hugo-simple/

clean:
  rm -r public
