alias s := server
alias serve := server
alias b := build

default:
  just --list

server:
  hugo server -D --source ./exampleSite --themesDir ../..

build:
  hugo --minify --gc --destination ../public --source ./exampleSite --themesDir ../.. --baseURL https://maolonglong.github.io/hugo-simple/

# TODO: https://github.com/numtide/treefmt-nix/issues/112
fmt:
  nix fmt
  bun run fmt

update-simplecss:
  curl -fSL https://cdn.simplecss.org/simple.css -o ./assets/simple.css

clean:
  rm -r public
