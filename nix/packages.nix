{...}: {
  perSystem = {pkgs, ...}: {
    packages.default = pkgs.stdenv.mkDerivation rec {
      pname = "neoathame";
      version = "0.0.0";
      src = ../.;
      nativeBuildInputs = [pkgs.zola];
      buildPhase = "zola build";
      installPhase = "cp -r public $out";
    };
  };
}
