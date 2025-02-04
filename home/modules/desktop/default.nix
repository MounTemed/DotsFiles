{ pkgs, inputs, ... }: {
  imports = [ ./wayland ./games ];

  # AGS
  programs.ags = {
    enable = true;

    configDir = ./ags;

    extraPackages = with pkgs; [
      inputs.ags.packages.${pkgs.system}.battery
      fzf
    ];
  };

  home.packages = [
    inputs.ags.packages.${pkgs.system}.io
    inputs.ags.packages.${pkgs.system}.notifd
  ];

}
