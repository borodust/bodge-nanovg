#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

lisp download-specs --lib-postfix ".gl2.bodged" \
     nanovg https://github.com/borodust/bodge-nanovg \
     "$script_dir/../src/gl2/spec/" $1


lisp download-specs --lib-postfix ".gl3.bodged" \
     nanovg https://github.com/borodust/bodge-nanovg \
     "$script_dir/../src/gl3/spec/" $1
