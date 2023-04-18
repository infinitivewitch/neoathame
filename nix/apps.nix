{...}: {
  perSystem = {
    config,
    pkgs,
    lib,
    ...
  }: {
    apps.default = let
      zola-serve = pkgs.writeScriptBin "run" ''
        ${pkgs.zola}/bin/zola -r $(${lib.getExe config.flake-root.package}) serve
      '';
    in {
      type = "app";
      program = "${zola-serve}/bin/run";
    };
  };
}
