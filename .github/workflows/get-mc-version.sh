#!/bin/sh

# Derives the MC Version from the package version.
pack_version=$(jq '.pack.pack_format' pack.mcmeta)
case "$pack_version" in
  1 )
    echo ::set-output name=MC_VERSION::"1.6.1-1.8.9"
    ;;
  2 )
    echo ::set-output name=MC_VERSION::"1.9-1.10.2"
    ;;
  3 )
    echo ::set-output name=MC_VERSION::"1.11-1.12.2"
    ;;
  4 )
    echo ::set-output name=MC_VERSION::"1.13-1.14.4"
    ;;
  5 )
    echo ::set-output name=MC_VERSION::"1.15-1.16.1"
    ;;
  6 )
    echo ::set-output name=MC_VERSION::"1.16.2-1.16.5"
    ;;
  7 )
    echo ::set-output name=MC_VERSION::"1.17"
    ;;
  8 )
    echo ::set-output name=MC_VERSION::"1.18"
    ;;
esac
