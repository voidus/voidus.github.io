{ pkgs ? import <nixpkgs> { } }:
import (pkgs.fetchFromGitHub {
  owner = "srid";
  repo = "neuron";
  rev = "1.9.35.0"; # this should match the docker image version in the github workflow
  sha256 = "0mfg4waq1wlqpxj9q5vfsfglpa7bw4yd0jaha1s55gp49swmn2q1";
  fetchSubmodules = true;
})
