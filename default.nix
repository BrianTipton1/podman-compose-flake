{ lib, pkgs, fetchPypi, ... }:

pkgs.python3Packages.buildPythonApplication rec {
  pname = "podman-compose";
  version = "1.0.6";
  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-LbI1BJ/KUKWk/9URqReAjJYNrLje/VSB3Ys2p31NouU=";
  };

  propagatedBuildInputs = with pkgs.python3Packages; [ pyyaml python-dotenv ];

  meta = {
    description = "An implementation of docker-compose with podman backend";
    homepage = "https://github.com/containers/podman-compose";
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.unix;
  };
}
