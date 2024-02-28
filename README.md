nix-config
==========

simplified nix configuration applied for ubuntu

### Home Manager

```console
$ nix build github:gvolpe/nix-config#homeConfigurations.gvolpe-edp.activationPackage
$ result/activate
```

## Programs

The `home.nix` file contains details about all the software I use, but here's a shout-out to the ones I use the most and that are customized to my needs.

| Type           | Program      |
| :------------- | :----------: |
| Editor         | [NeoVim](https://neovim.io/) |
| Launcher       | [Rofi](https://github.com/davatorium/rofi) |
| Shell          | [Fish](https://fishshell.com/) |
| Status Bar     | [Polybar](https://polybar.github.io/) |
| Terminal       | [Alacritty](https://github.com/alacritty/alacritty) |
| Window Manager | [XMonad](https://xmonad.org/) |

## Themes

| Type           | Name      |
| :------------- | :----------: |
| GTK Theme      | [Juno Ocean](https://github.com/EliverLara/Juno) |
| GTK Icon Theme | [Beauty Line](https://www.gnome-look.org/p/1425426/) |
| Terminal Font  | [JetBrainsMono](https://www.jetbrains.com/lp/mono/) | - [use this instead](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Ubuntu/Medium/UbuntuNerdFont-Medium.ttf)

## Structure

Here is an overview of the directories' structure:

```
.
├── build
├── flake.nix
├── flake.lock
├── switch
├── home
├── imgs
├── lib
├── notes
├── outputs
└── system
```

- `build`: the build and installation script.
- `flake.nix`: home and system configurations.
- `switch`: helper script to switch home and system configurations.
- `home`: all the user programs, services and dotfiles.
- `imgs`: screenshots and other images.
- `lib`: custom nix library functions and overlays used to instantiate pkgs.
- `notes`: cheat-sheets, docs, etc.
- `outputs`: the Home Manager and NixOS flake outputs.
- `system`: the NixOS configuration, settings for different laptops and window managers.

## Install

You can have a look at the available flake outputs before getting started.

```console
$ nix flake show github:gvolpe/nix-config
github:gvolpe/nix-config/b7fb45d60b761fe39ee1ce78d2b1fd0f0c8db50e
├───homeConfigurations: unknown
└───packages
    └───x86_64-linux
        ├───bazecor: package 'bazecor-1.3.9-patched'
        ├───metals: package 'metals-1.2.0'
        └───metals-updater: package 'metals-updater-script'
