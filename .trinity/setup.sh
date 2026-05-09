#!/bin/bash
# Install Python modules so the Read tool can extract text from uploaded files.
# Trinity's base image does NOT include these by default
# (verified against docker/base-image/Dockerfile in github.com/abilityai/trinity).
#
# CRITICAL: Trinity's container has BOTH python3.10 and python3.11. Claude Code's
# Read tool uses python3.10 internally (verified 2026-05-08), while `python3` symlinks
# to 3.11 by default. So `pip install --user` (which uses default 3.11) is NOT enough.
# We install for BOTH versions explicitly.
#
# `pip install --user` writes to ~/.local/lib/python{3.10,3.11}/site-packages,
# which is on a persistent volume and survives container restarts and image rebuilds.
set -e
python3.10 -m pip install --user pypdf openpyxl
python3.11 -m pip install --user pypdf openpyxl
