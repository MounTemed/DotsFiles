{ inputs, pkgs, ... }: {
  imports = [ ./hyprland ];

  home.packages = with pkgs; [
    # wallpaper
    swww
    waypaper

    # clipboard
    wl-clipboard

    # launcher
    wofi

    #hypr
    hyprpicker

  ];

  home.sessionVariables = {
    QT_QPA_PLATFORM = "wayland";
    SDL_VIDEODRIVER = "wayland";
    XDG_SESSION_TYPE = "wayland";
  };

  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      config = {
        common.default = [ "gtk" ];
        hyprland.default = [ "gtk" "hyprland" ];
      };
      extraPortals =
        [ pkgs.xdg-desktop-portal-gtk ];
    };
  };
}
