{
  description = "Pulsar collection Development Environment";

  # ── Inputs ────────────────────────────────────────────────────────────
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flakeUtils.url = "github:numtide/flake-utils";
  };

  # ── Outputs ───────────────────────────────────────────────────────────
  outputs = {
    self,
    nixpkgs,
    flakeUtils,
  }:
    flakeUtils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
      inherit (pkgs) lib;

      tools = with pkgs; [
        just
        ansible
        ansible-lint
        yamllint
        git-cliff
      ];
    in {
      formatter = pkgs.alejandra;

      devShells = {
        default = pkgs.mkShell {
          packages = tools;
        };
      };
    });
}
