#!/bin/bash
# Install pypdf so the Read tool can extract text from uploaded PDFs.
# Trinity's base image does NOT include this module by default
# (verified against docker/base-image/Dockerfile in github.com/abilityai/trinity).
# `pip install --user` writes to ~/.local, which is on a persistent volume,
# so the install survives container restarts and image rebuilds.
set -e
pip install --user pypdf
