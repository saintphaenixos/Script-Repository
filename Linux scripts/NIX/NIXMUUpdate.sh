#!/usr/bin/env bash

#A simple script to upgrade Nix itself in place on a Multi User installation:

nix-channel --update; nix-env -iA nixpkgs.nix nixpkgs.cacert; systemctl daemon-reload; systemctl restart nix-daemon
