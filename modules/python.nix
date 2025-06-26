{ pkgs, ... }: {
  home.packages = with pkgs;
    [
      (python3.withPackages (python-pkgs:
        with python-pkgs; [
          pandas
          requests
          numpy
          matplotlib
          datetime
          pytest
        ]))
    ];
}
