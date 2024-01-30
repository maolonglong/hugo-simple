set ignore-comments

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
  # TODO: https://github.com/numtide/treefmt-nix/issues/112
  nix fmt
  bun run fmt

check:
  # TODO: https://github.com/numtide/treefmt-nix/issues/112
  nix flake check
  bun run check

update-simplecss:
  curl -fSL https://cdn.simplecss.org/simple.css -o ./assets/simple.css

clean:
  rm -r public
