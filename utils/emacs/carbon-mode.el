;;; carbon-mode.el --- major mode for carbon  -*- lexical-binding: t; -*-

;;; Part of the Carbon Language project, under the Apache License v2.0 with LLVM
;;; Exceptions. See /LICENSE for license information.
;;; SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

(require 'cc-mode)

(define-derived-mode carbon-mode c++-mode
  "Carbon")

(provide 'carbon-mode)
