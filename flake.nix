# flake.nix
# Sources:
# https://nixos.wiki/wiki/Creating_a_NixOS_live_CD
# https://hoverbear.org/blog/nix-flake-live-media/
{
  description = "A flake to build a basic NixOS iso";
  inputs.nixos.url = "github:nixos/nixpkgs/nixos-23.05";
  outputs = { self, nixos }: {

    nixosConfigurations =
      let
        exampleBase = {
          # Build faster without compression
          isoImage.squashfsCompression = "gzip -Xcompression-level 1";
          # Enable SSH in the boot process.
          systemd.services.sshd.wantedBy = nixos.lib.mkForce [ "multi-user.target" ];
        };
      in 
      {
        exampleIso = nixos.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            "${nixos}/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix"
            exampleBase
            ./custom.nix
        ];
      };
      example = nixos.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ exampleBase ];
      };
    };
  };
}

