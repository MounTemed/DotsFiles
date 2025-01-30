{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      font_family = "fira-code";
      font_size = 12.0;
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      window_padding_width = 7;
      window_padding_height = 7;
      hide_window_decorations = true;

      initial_window_width = 70;
      initial_window_height = 25;

      cursor_shape = "block";
      cursor_blink_interval = 800;
      cursor_blink_after = 0;

      # Direct color values (no stylix references)
      background = "#0f0f0f"; # base00
      foreground = "#f0f0f0"; # base07

      selection_foreground = "#0f0f0f"; # base00
      selection_background = "#f0f0f0"; # base07

      color0 = "#0f0f0f"; # base00
      color1 = "#c65f5f"; # base08
      color2 = "#859e82"; # base0B
      color3 = "#d9b27c"; # base09
      color4 = "#728797"; # base0C
      color5 = "#998396"; # base0D
      color6 = "#ab78ab"; # base0E
      color7 = "#f0f0f0"; # base07

      color8  = "#c65f5f"; # Bright Red (base08)
      color9  = "#d9b27c"; # Bright Yellow (base09)
      color10 = "#859e82"; # Bright Green (base0B)
      color11 = "#728797"; # Bright Cyan (base0C)
      color12 = "#998396"; # Bright Blue (base0D)
      color13 = "#ab78ab"; # Bright Magenta (base0E)
      color14 = "#ab9382"; # Bright Brown (base0F)
      color15 = "#d8d8d8"; # Bright White (base05)

      enable_config_parsing = true;
    };
  };
}
