{
  username = "hantic"; # auto-set with install.sh, live-install.sh, and rebuild scripts.

  # Desktop Environment
  desktop = "hyprland"; # hyprland, i3, gnome, plasma6

  # Theme & Appearance
  bar = "noctalia"; # waybar, noctalia, wayle
  waybarTheme = "minimal"; # stylish, minimal
  sddmTheme = "purple_leaves"; # astronaut, black_hole, purple_leaves, jake_the_dog, hyprland_kath
  defaultWallpaper = "evening-sky.webp"; # Change with SUPER + SHIFT + W (Hyprland)
  hyprlockWallpaper = "kurzgesagt-galaxies.webp";

  # Default Applications
  terminal = "kitty"; # kitty, alacritty, wezterm
  editor = "vscode"; # nixvim, zed, vscode, helix, doom-emacs, nvchad, neovim
  browser = "zen-beta"; # librewolf, zen-beta, firefox, floorp
  fileManager = "thunar"; # yazi, lf, thunar
  shell = "zsh"; # bash, zsh
  games = true; # Enable/Disable gaming module

  # Hardware
  hostname = "hypr-pc";
  videoDriver = "nvidia"; # nvidia, amdgpu, intel
  nvidiaChannel = "stable"; # stable, latest, beta, legacy_xxx
  bluetoothSupport = true; # Whether your motherboard supports bluetooth
  batterySupport = true; # Whether device has a battery (laptop)

# Localization
timezone = "Europe/Warsaw";
locale = "pl_PL.UTF-8";
clock24h = true;
kbdLayout = "pl";
kbdVariant = "";
consoleKeymap = "pl";
capslockAsESC = false;
}
