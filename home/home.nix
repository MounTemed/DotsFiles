{ inputs, ... }: {
  home.username = "laimick";
  home.homeDirectory = "/home/laimick";

  imports = [
    ./modules
    inputs.ags.homeManagerModules.default
    # inputs.nvf.nixosModules.default
    inputs.hyprland.homeManagerModules.default
  ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
