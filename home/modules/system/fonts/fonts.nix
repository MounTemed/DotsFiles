{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    # General fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    roboto
    roboto-serif
    liberation_ttf
    freefont_ttf
    dejavu_fonts
    unifont

    # Code fonts
    fira-code
    fira-code-symbols
    inconsolata
    iosevka
    jetbrains-mono
    meslo-lg
    ubuntu_font_family

    # Nerd Fonts
    # (builtins.attrValues {
    #   inherit (nerd-fonts)
    #     fira-code
    #     inconsolata
    #     iosevka
    #     jetbrains-mono
    #     meslo-lg
    #     roboto-mono
    #     ubuntu
    #     ubuntu-mono;
    # })
  ];
}
