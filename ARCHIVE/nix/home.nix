{ config, pkgs, ... }:

{

  #imports =
  #  [
      #./app/browser/librewolf.nix
      #./app/browser/chromium.nix
      #./app/browser/brave.nix
  #  ];

  # Home Manager data.
  home.username = "y";
  home.homeDirectory = "/home/y";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # Home Manager dotfiles.
  home.file = {
    ".config/fish".source = ./system/fish;
    ".local/share/konsole".source = ./apps/konsole;
    ".config/alacritty".source = ./apps/alacritty;
    ".config/kitty".source = ./apps/kitty;
    ".config/hypr".source = ./hyprland/hypr;
    ".config/waybar".source = ./hyprland/waybar;
    #".config/VSCodium".source = ./apps/VSCodium; # doesn't start after symlink
    #".config/GitHub Desktop".source = ./apps + "/GitHub Desktop"; # doesn't start after symlink
    # KDE STUFF
    ".config/autostart".source = ./KDE/autostart;
    ".config/gtk-3.0".source = ./KDE/gtk-3.0;
    ".config/gtk-4.0".source = ./KDE/gtk-4.0;
    ".config/kate".source = ./KDE/kate;
    ".config/kdedefaults".source = ./KDE/kdedefaults;
    ".config/xsettingsd".source = ./KDE/xsettingsd;
    ".config/baloofileinformationrc".source = ./KDE/baloofileinformationrc;
    ".config/baloofilerc".source = ./KDE/baloofilerc;
    ".config/dolphinrc".source = ./KDE/dolphinrc;
    ".config/drkonqirc".source = ./KDE/drkonqirc;
    ".config/filetypesrc".source = ./KDE/filetypesrc;
    ".config/gtkrc".source = ./KDE/gtkrc;
    ".config/gtkrc-2.0".source = ./KDE/gtkrc-2.0;
    ".config/gwenviewrc".source = ./KDE/gwenviewrc;
    ".config/kactivitymanagerd-statsrc".source = ./KDE/kactivitymanagerd-statsrc;
    ".config/kactivitymanagerdrc".source = ./KDE/kactivitymanagerdrc;
    ".config/katerc".source = ./KDE/katerc;
    ".config/katevirc".source = ./KDE/katevirc;
    ".config/kbackuprc".source = ./KDE/kbackuprc;
    ".config/kcminputrc".source = ./KDE/kcminputrc;
    ".config/kconf_updaterc".source = ./KDE/kconf_updaterc;
    ".config/kded5rc".source = ./KDE/kded5rc;
    ".config/kded6rc".source = ./KDE/kded6rc;
    ".config/kdeglobals".source = ./KDE/kdeglobals;
    ".config/kglobalshortcutsrc".source = ./KDE/kglobalshortcutsrc;
    ".config/kiorc".source = ./KDE/kiorc;
    ".config/konsolerc".source = ./KDE/konsolerc;
    ".config/konsolesshconfig".source = ./KDE/konsolesshconfig;
    ".config/krdcrc".source = ./KDE/krdcrc;
    ".config/krdpserverrc".source = ./KDE/krdpserverrc;
    ".config/krenamerc".source = ./KDE/krenamerc;
    ".config/kscreenlockerrc".source = ./KDE/kscreenlockerrc;
    ".config/kservicemenurc".source = ./KDE/kservicemenurc;
    ".config/ksmserverrc".source = ./KDE/ksmserverrc;
    ".config/ktimezonedrc".source = ./KDE/ktimezonedrc;
    ".config/ktrashrc".source = ./KDE/ktrashrc;
    ".config/kwalletrc".source = ./KDE/kwalletrc;
    ".config/kwinoutputconfig.json".source = ./KDE/kwinoutputconfig.json;
    ".config/kwinrc".source = ./KDE/kwinrc;
    ".config/kwritemetainfos".source = ./KDE/kwritemetainfos;
    ".config/kwriterc".source = ./KDE/kwriterc;
    ".config/plasma_calendar_holiday_regions".source = ./KDE/plasma_calendar_holiday_regions;
    ".config/plasma-localerc".source = ./KDE/plasma-localerc;
    ".config/plasma-org.kde.plasma.desktop-appletsrc".source = ./KDE/plasma-org.kde.plasma.desktop-appletsrc;
    ".config/plasmanotifyrc".source = ./KDE/plasmanotifyrc;
    ".config/plasmarc".source = ./KDE/plasmarc;
    ".config/plasmashellrc".source = ./KDE/plasmashellrc;
    ".config/powermanagementprofilesrc".source = ./KDE/powermanagementprofilesrc;
    ".config/spectaclerc".source = ./KDE/spectaclerc;
    ".config/systemsettingsrc".source = ./KDE/systemsettingsrc;
    ".config/user-dirs.dirs".source = ./KDE/user-dirs.dirs;
    ".config/user-dirs.locale".source = ./KDE/user-dirs.locale;
    ".local/share/applications".source = ./KDE/applications;
    ".local/share/dolphin".source = ./KDE/dolphin;
    ".local/share/gwenview".source = ./KDE/gwenview;
    ".local/share/kactivitymanagerd".source = ./KDE/kactivitymanagerd;
    ".local/share/kate".source = ./KDE/kate;
    ".local/share/kded6".source = ./KDE/kded6;
    ".local/share/klipper".source = ./KDE/klipper;
    ".local/share/knewstuff3".source = ./KDE/knewstuff3;
    ".local/share/kscreen".source = ./KDE/kscreen;
    ".local/share/kwalletd".source = ./KDE/kwalletd;
    ".local/share/kwrite".source = ./KDE/kwrite;
    ".local/share/kxmlgui5".source = ./KDE/kxmlgui5;
    ".local/share/plasma".source = ./KDE/plasma;
    ".local/share/plasmashell".source = ./KDE/plasmashell;
    ".local/share/wallpapers".source = ./KDE/wallpapers;
    ".local/share/user-places.xbel".source = ./KDE/user-places.xbel;
    ".local/state/dolphinstaterc".source = ./KDE/dolphinstaterc;
    ".local/state/gwenviewstaterc".source = ./KDE/gwenviewstaterc;
    ".local/state/katestaterc".source = ./KDE/katestaterc;
    ".local/state/kbackupstaterc".source = ./KDE/kbackupstaterc;
    ".local/state/konsolestaterc".source = ./KDE/konsolestaterc;
    ".local/state/kwritestaterc".source = ./KDE/kwritestaterc;
    ".local/state/plasmashellstaterc".source = ./KDE/plasmashellstaterc;
    ".local/state/spectaclestaterc".source = ./KDE/spectaclestaterc;
    ".local/state/systemsettingsstaterc".source = ./KDE/systemsettingsstaterc;
  };

  # Home Manager can also manage your environment variables.
  home.sessionVariables = {
    EDITOR = "micro";
  };

  # home.file."~/.config/fish/config.fish".source = ./system/config.fish;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
