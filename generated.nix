{ pkgs, ... }: (builtins.genList
  (i: pkgs.stdenv.mkDerivation {
    name = "hello-${toString i}";
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/bin
      echo "#!/bin/bash" > $out/bin/hello-${toString i}
      echo "echo Hello, world ${toString i}!" >> $out/bin/hello-${toString i}
      chmod +x $out/bin/hello-${toString i}
    '';
  }) 100000)
