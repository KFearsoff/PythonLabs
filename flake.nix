{
  inputs = { 
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }: 
    flake-utils.lib.eachDefaultSystem (system: 
      let 
        pkgs = import nixpkgs { inherit system; };
        pythonEnv = pkgs.python39.withPackages (ps: [
          # python packages will be here
          ps.requests
          ps.flask 
          ps.psycopg2
        ]);
      in {
        devShell = with pkgs; mkShell {
          buildInputs = [
            pythonEnv
          ];
        };
      });
}