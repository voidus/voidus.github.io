{ pkgs ? import <nixpkgs> { } }:
import (pkgs.fetchFromGitHub {
  owner = "srid";
  repo = "neuron";
  rev = "10e3ea028c23e664e540d0460e9515bdf02ac51d";
  sha256 = "039a9vgjwal0lb5zz0ilk1vlmhs1yc6vp17j5nnkl639vj5f0yxl";
  fetchSubmodules = true;
})
