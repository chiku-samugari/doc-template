{ stdenv, lib }:

stdenv.mkDerivation {
  pname = "doc-template";
  version = "1.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';
}
