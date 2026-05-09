#!/bin/bash
# Install Python modules so the Read tool can extract text from uploaded files.
# Trinity's base image does NOT include these by default
# (verified against docker/base-image/Dockerfile in github.com/abilityai/trinity).
# `pip install --user` writes to ~/.local, which is on a persistent volume,
# so the install survives container restarts and image rebuilds.
set -e
pip install --user pypdf      # PDF reading (verified 2026-05-08)
pip install --user openpyxl   # XLSX reading (verified 2026-05-08, user uploaded .xlsx)
