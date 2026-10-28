{ pkgs, lib, config, ... }:
{
  nixpkgs.config.packageOverrides = pkgs: {
    intel-vaapi-driver = pkgs.intel-vaapi-driver.override { enableHybridCodec = true; };
  };

  environment.sessionVariables = lib.optionalAttrs config.programs.hyprland.enable {
    LIBVA_DRIVER_NAME = "iHD";
  };

  boot.kernelParams = [
    "intel_pstate=active"
    "i915.enable_guc=2" # Enable GuC/HuC firmware loading
    "i915.enable_psr=1" # Panel Self Refresh for power savings
    "i915.enable_fbc=1" # Framebuffer compression
    "i915.fastboot=1" # Skip unnecessary mode sets at boot
    "mem_sleep_default=deep" # Allow deepest sleep states
    "i915.enable_dc=2" # Display power saving
    "nvme.noacpi=1" # Helps with NVME power consumption
  ];

  # Load the driver
  services.xserver.videoDrivers = [ "modesetting" ];

  # OpenGL
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vpl-gpu-rt
          intel-vaapi-driver
    libva-vdpau-driver
    libvdpau-va-gl

      # Opcjonalnie, jeśli potrzebujesz VDPAU:
      # libvdpau-va-gl
      # libva-vdpau-driver
    ];
  };

  # Thermal and Noise Management
  services.thermald.enable = true;
  #services.throttled.enable = true;
}
