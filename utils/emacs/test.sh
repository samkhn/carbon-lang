#!/usr/bin/env bash
#
# Part of the Carbon Language project, under the Apache License v2.0 with LLVM
# Exceptions. See /LICENSE for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# Performs a local install. This will replace any previous carbon installs
# without prompting.

# Because the set of all possible emacs configurations is uncountably infinite
# this script forms an opinion and sticks to it for testing.
#
# $ ./test.sh
#
# Copies carbon-mode to lisp package location and opens emacs on sieve.
#
# You can change where carbon mode elisp gets copied to
# $ EMACS_MODULES=/i/keep/it/here ./test.sh
#

set -eu

EMACS_MODULES=$HOME/.emacs.d/lisp

# Next line enforces that we run this test within the same directory.
cp ./carbon-mode.el $EMACS_MODULES

emacs --eval "(require 'carbon-mode)" ../../examples/sieve.carbon -f carbon-mode &
