{ pkgs, ... }: {
  home.packages = with pkgs;
    [
      (python312.withPackages (python-pkgs:
        with python-pkgs; [
          pip
          pandas
          requests
          numpy
          matplotlib
          datetime
          pytest
        ]))
    ];
}
