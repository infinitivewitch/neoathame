{inputs, ...}: {
  systems = import inputs.systems;

  imports = [
    ./apps.nix
    ./devshells.nix
    ./formatter.nix
    ./packages.nix
  ];
}
