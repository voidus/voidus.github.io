{ pkgs ? import <nixpkgs> { } }:

let neuron = import ./neuron.nix { inherit pkgs; };
in pkgs.mkShellNoCC {
  buildInputs = [ neuron.defaultPackage.${builtins.currentSystem} ];
}
