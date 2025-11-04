{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    uv
    python313
    stdenv.cc.cc.lib
  ];

}
