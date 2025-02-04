{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

    home-manager = {
        url = "github:nix-community/home-manager/release-24.11";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
        type = "git";
        url = "https://github.com/hyprwm/Hyprland";
        inputs.nixpkgs.follows = "nixpkgs";
        submodules = true;
    };

    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    ayugram-desktop = {
        url = "github:ayugram-port/ayugram-desktop/release?submodules=1";
    };

    ags.url = "github:aylur/ags";

    flake-parts.url = "github:hercules-ci/flake-parts";

    # nvf
    # nvf = {
    #     url = "github:notashelf/nvf";
    # };
  };

  outputs = inputs@{ nixpkgs, self, home-manager, ayugram-desktop, zen-browser
    , hyprland, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules =
            [ ./configuration.nix home-manager.nixosModules.home-manager ];
        };
      };
      homeConfigurations = {
        laimick = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [
              ./home/home.nix
          ];
        };
      };
    };
}
