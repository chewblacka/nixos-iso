{ config, lib, pkgs, ... }:
{
  # imports = [
  #   fontsModule
  # ];

  environment.systemPackages = [
    pkgs.helix
    pkgs.htop
    pkgs.git
    # Add more packages here as needed
  ];
}

