#!/usr/bin/env bash
#
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

export FONTCONFIG_PATH=$SNAP/etc/fonts
export FONTCONFIG_FILE=$SNAP/etc/fonts/fonts.conf
export XDG_DATA_HOME=$SNAP/usr/share
export TMPDIR=$SNAP_USER_DATA

NAME="@@NAME@@"
VSCODE_PATH="$SNAP"
ELECTRON="$VSCODE_PATH/$NAME"
CLI="$VSCODE_PATH/resources/app/out/cli.js"
ATOM_SHELL_INTERNAL_RUN_AS_NODE=1 exec "$ELECTRON" "$CLI" "$@"
