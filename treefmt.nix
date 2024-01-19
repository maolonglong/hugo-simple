{pkgs, ...}: {
  projectRootFile = "flake.nix";
  programs.alejandra.enable = true;
  programs.taplo.enable = true;
}
