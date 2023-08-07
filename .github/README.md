# nixos-iso
Files to create custom NixOS ISO install media

Custom packages and options can be specified via the `custom.nix` file

### Build Instructions
First make sure you have nix installed e.g. via the [Determinate Systems Nix installer](https://github.com/DeterminateSystems/nix-installer) 

Then to build the ISO, run the command

```
nix build .#nixosConfigurations.exampleIso.config.system.build.isoImage
```

The resulting ISO image can be found in `./result/iso`

Burn to CD/USB or copy to virtual device.

Enjoy!
