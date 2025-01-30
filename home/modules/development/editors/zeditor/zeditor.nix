{ config, pkgs, lib, ... }: {
  home.packages = with pkgs; [ zed-editor ];
  programs.zed-editor = {
    enable = true;

    extensions = [
      # Lang
      "make"
      "dockerfile"
      "git firefly"
      "sql"
      "terraform"
      "docker compose"
      "basher"
      "snippets"
      "nginx"
      "golangci-lint"
      "ansible language server"
      "helm"
      "postgres context server"
      # Themes
      "nightfox themes"
      "tokyo night themes"
    ];

    userSettings = {
      assistant = {
        enabled = true;
        version = "2";
        default_open_ai_model = null;

        default_model = {
          provider = "zed.dev";
          model = "claude-3-5-sonnet-latest";
        };
      };

      hour_format = "hour24";
      auto_update = false;
      terminal = {
        alternate_scroll = "off";
        blinking = "off";
        copy_on_select = false;
        dock = "bottom";
        detect_venv = {
          on = {
            directories = [ ".env" ".venv" ];
            activate_script = "default";
          };
        };
        env = { TERM = "kitty"; };
        font_size = null;
        option_as_meta = false;
        font_features = null;
        line_height = "comfortable";
        button = false;
        shell = "fish";
        toolbar = { title = false; };
        working_directory = "current_project_directory";
      };

      lsp = {
        nixd = {
          settings = {
            diagnostic ={
              suppress = [
                "sema-extra-with"
              ];
            };
          };
        };
      };

      languages = {
        nix = {
          language_servers = [
            "nixd"
          ];
        };
      };

      vim_mode = false;
      load_direnv = "shell_hook";
      base_keymap = "VSCode";
      theme = {
        mode = "dark";
        light = "Tokyo Night";
        dark = "Tokyo Night";
      };
      ui_font_size = 15;
      buffer_font_size = 16;
    };
  };
}
