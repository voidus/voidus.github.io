{
  description = "zettelkasten";

  inputs.flake-utils.url = "github:numtide/flake-utils/b543720";
  inputs.neuron.url = "github:srid/neuron/164956f";

  outputs = { self, nixpkgs, flake-utils, neuron }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShell = pkgs.mkShell {
            buildInputs = [neuron.packages.${system}.neuron];
          };
        }
      );
}
