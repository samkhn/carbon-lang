<!--
Part of the Carbon Language project, under the Apache License v2.0 with LLVM
Exceptions. See /LICENSE for license information.
SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
-->

# Emacs plugin for Carbon

For now, simply derives from cc-mode.

Install:

1. copy carbon-mode.el to lisp package path
2. add to config

```emacs-lisp
(require 'carbon-mode)
(add-to-list 'auto-mode-alist '("\\.carbon\\'" . carbon-mode))
```

Testing:

If you are adding a feature, the test.sh script will copy carbon-mode.el to your
emacs lisp package path and open an example file in carbon mode.

You can specify the emacs lisp package path for example

```shell
EMACS_MODULES=/i/keep/it/here ./test.sh
```

By default, it assumes emacs packages are stored in $HOME/.emacs.d/lisp/
