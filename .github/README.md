# nixos-iso
A nix flake to create custom NixOS ISO install media

### Customizing
Custom packages and options can be specified via the `custom.nix` file

SSH keys can be placed in `flake.nix`

### Build Instructions
1. First make sure you have nix installed e.g. via the [Determinate Systems Nix installer](https://github.com/DeterminateSystems/nix-installer) 

2. Clone this repo

3. Then to build the ISO, run the command

```
nix build .#nixosConfigurations.exampleIso.config.system.build.isoImage
```

The resulting ISO image can be found in `./result/iso`

4. Burn to CD/USB or copy to virtual device.

Enjoy!
