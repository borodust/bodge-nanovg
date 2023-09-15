[![Build Status](https://travis-ci.org/borodust/bodge-nanovg.svg)](https://travis-ci.org/borodust/bodge-nanovg) [![Build status](https://ci.appveyor.com/api/projects/status/69a7291wf5vcshwf?svg=true)](https://ci.appveyor.com/project/borodust/bodge-nanovg)

# bodge nanovg wrapper

Thin wrapper over [`NanoVG`](https://github.com/memononen/nanovg/) library for hardware-accelerated 2D drawing via OpenGL.


# Requirements

* ASDF/Quicklisp
* x86_64/i686/ppc64/ppc64le GNU/Linux, macOS or Windows


# Loading
```lisp
(ql:quickload '(nanovg-blob bodge-nanovg))
```

# Usage

### Interface
All wrapped functions can be found in `%nvg` package. On the other hand, `nvg` package
contains minimally lispified wrappers and utility functions.


# Example
A bit verbose but simplest possible example can be found in [`example.lisp`](example.lisp).


To run it, evaluate in your REPL:
```lisp
(ql:quickload :bodge-nanovg/example)
(nanovg.example:run)
```
