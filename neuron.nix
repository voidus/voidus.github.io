{ pkgs ? import <nixpkgs> { } }:
import (pkgs.fetchFromGitHub {
    owner = "srid";
    repo = "neuron";
    rev = "164956fdab8242b78e6c51753aa3d2f0b3fdc2fc";
    sha256 = "FhOtMyxv3AR1u+GXulR51hGx9TFRuXOFowC00p7oDU4=";
    fetchSubmodules = true;
  })
