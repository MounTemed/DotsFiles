{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
  ];
   # programs.fastfetch = {
   #       enable = true;

   #       settings = {
   #         logo = {
   #           type = "kitty-direct";
   #           source = ./nixos.png;
   #           width = 18;
   #           height = 8;
   #           padding = {
   #             left = 0;
   #             right = 20;
   #           };
   #         };

   #         display = {
   #           separator = ": ";
   #           color = {
   #             title = "red";
   #             separator = "dim_white";
   #             keys = "red";
   #           };
   #         };

   #         modules = [
   #           "Title"
   #           "Separator"
   #           "OS"
   #           "Kernel"
   #           (
   #             if config.wayland.windowManager.hyprland.enable
   #             then {
   #               key = "Compositor";
   #               type = "WM";
   #             }
   #             else "Shell"
   #           )
   #           "Terminal"
   #         ];
   #       };
   # };
}
