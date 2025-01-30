{ pkgs, ... }: {
  home.packages = with pkgs; [
    podman-tui
    podman-desktop
  ];
}
