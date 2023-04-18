{inputs, ...}: {
  imports = [
    inputs.flake-root.flakeModule
    inputs.treefmt-nix.flakeModule
  ];

  perSystem = {
    config,
    pkgs,
    ...
  }: {
    formatter = config.treefmt.build.wrapper;

    treefmt.config = {
      inherit (config.flake-root) projectRootFile;
      package = pkgs.treefmt;
      flakeFormatter = false;
      programs = {
        prettier.enable = true;
        alejandra.enable = true;
      };
    };
  };
}
