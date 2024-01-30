{
  description = "Hugo Simple Example Site";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    treefmt-nix,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        treefmtEval = treefmt-nix.lib.evalModule pkgs ./treefmt.nix;
      in {
        formatter = treefmtEval.config.build.wrapper;
        checks = {
          formatting = treefmtEval.config.build.check self;
        };

        devShells.default = pkgs.mkShell {
          nativeBuildInputs =
            [
              (pkgs.hugo.override {
                buildGoModule = args:
                  pkgs.buildGoModule (args
                    // {
                      # Remove "extended".
                      tags = [];
                    });
              })
            ]
            ++ (with pkgs; [
              bun
              just
            ]);

          shellHook = ''
            [ -d "$PWD/node_modules" ] || bun install
          '';
        };
      }
    );
}
