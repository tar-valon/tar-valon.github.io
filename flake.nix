{
  description = "Hugo shell for my static website";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in {
      devShells."x86_64-linux".default = pkgs.mkShell {
        buildInputs = with pkgs; [
          hugo
        ];

      shellHook = ''
        # zellij --layout layout.kdl
        '';
      };


  };
}
