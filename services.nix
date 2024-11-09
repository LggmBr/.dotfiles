{ config, pkgs, ... }: {
  /*systemd.user.services.kanata = {
    Unit = {
      Description = "Runs the kanata keyboard remapper.";
    };
    Install = {
      WantedBy = [ "sysinit.target" ];
    };
    Service = {
      ExecStartPre = "/usr/bin/modprobe uinput";
      ExecStart = "/usr/bin/kanata -c $HOME/.config/config.kbd";
      Restart = "no";
    };
  };*/
  services.kanata = { 
    enable = true; 
    keyboards = { 
      main = { 
        config = builtins.readFile .config/kanata/config.kbd;
      }; 
    }; 
  };
}
