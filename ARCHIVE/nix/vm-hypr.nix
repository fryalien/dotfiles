{ inputs, config, pkgs, ... }:

{
  # Enable Cachix (https://wiki.hyprland.org/Nix/Cachix/)
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  # Enable hyprland (https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/)
  programs.hyprland = {
    enable = true;
    # set the flake package
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # make sure to also set the portal package, so that they are in sync
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
  };

  # Optional, hint electron apps to use wayland:
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # INSTALL PACKAGES
  environment.systemPackages = with pkgs; [

    # KDE DOLPHIN
    kdePackages.dolphin
    kdePackages.dolphin-plugins
    kdePackages.ark
    kdePackages.konsole
    kdePackages.kio-admin
    kdePackages.breeze-icons

    # ICONS
    dracula-icon-theme
    nordzy-icon-theme
    epapirus-icon-theme
    morewaita-icon-theme
    la-capitaine-icon-theme
    gnome-icon-theme

    # HYPRLAND SPECIFIC
    # status bar
    waybar
    # notifications
    dunst
    libnotify
    # wallpaper
    hyprpaper
    # terminal
    kitty
    # app launcher
    rofi-wayland
    # screenshots
    grim
    slurp
    # clipboard
    wl-clipboard
    # file manager
    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin
    # fonts
    font-awesome
    hack-font
    fira-code
    fira-code-nerdfont
    # logout menu
    wlogout
    # GTK theme
    magnetic-catppuccin-gtk
    tokyonight-gtk-theme
    # KDE theme
    catppuccin-kvantum
    # Setup GTK themes (.icons .themes)
    nwg-look
    # Setup QT themes
    libsForQt5.qt5ct
    kdePackages.qt6ct
    themechanger
    kdePackages.qtstyleplugin-kvantum
    # QT stuff
    qt5.qtwayland
    qt6.qtwayland
    # Monitor stuff
    wlr-randr
    # Font manager
    font-manager
  ];

  # Enable VirtualBox guest.
  virtualisation.virtualbox.guest.enable = true;
  virtualisation.virtualbox.guest.dragAndDrop = true;
  virtualisation.virtualbox.guest.seamless = true;
  virtualisation.virtualbox.guest.clipboard = true;

  # Enable virt-manager guest.
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;

}
