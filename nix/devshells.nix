{...}: {
  perSystem = {pkgs, ...}: {
    devShells.default = pkgs.mkShell {
      buildInputs = [pkgs.zola];
    };
  };
}
