# aio-iter2: aio but using iter2-lambda

This package provides the macros `aio-iter2-lambda`,
`aio-iter2-defun`, and `aio-iter2-with-async`, which work like the
`aio-lambda`, `aio-defun`, and `aio-with-async` from
[`aio`](https://github.com/skeeto/emacs-aio), but using
`iter2-lambda` from the [`iter2`](https://github.com/doublep/iter2)
package instead of `iter-lambda`. This brings the benefits of the
`iter2` library to `aio`-using code, which makes the functions
defined using this package's macros more efficient and also allows
using `save-excursion`, `save-restriction`, and other special forms
which `iter-lambda` doesn't support.

The functions defined using this package's macros are compatible
with the rest of the original `aio` package's functions and macros,
so they are intentionally not duplicated here - use the original
functions and macros from `aio`.
