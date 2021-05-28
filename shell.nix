{ pkgs ? import <nixpkgs> { } }:
let neuron = import ./neuron.nix { inherit pkgs; };
in pkgs.mkShell {
  buildInputs = [ neuron.defaultPackage.${builtins.currentSystem} ];
}
