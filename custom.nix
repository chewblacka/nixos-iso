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
    users.users.nixos = {
    isNormalUser = true;
    uid = 1000;
    extraGroups = [ "wheel" ];
    initialHashedPassword = "";
    openssh.authorizedKeys.keys = [ "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBDj2FdHqTEFS2AFwVXbc/93v+tKlD5MlSOFwWlGAJoNVFuOZh0sptdnaDR1XwIFCfGtFGvx0vNHJxe8uIFUbP0=" ];
  };

  
}

