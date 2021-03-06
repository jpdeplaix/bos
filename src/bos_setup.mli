(*---------------------------------------------------------------------------
   Copyright (c) 2016 Daniel C. Bünzli. All rights reserved.
   Distributed under the ISC license, see terms at the end of the file.
   %%NAME%% v%%VERSION%%
  ---------------------------------------------------------------------------*)

(** Quick setup for simple programs.

    Linking against this module setups {!Logs} and issuing:
{[
open Bos_setup
]}
    in a module is sufficient to bring {!Rresult}, {!Astring} and
    {!Bos} in scope. See also how to use this for
    {{!interpreted}interpreted programs}.

    {e v%%VERSION%% - {{:%%PKG_WWW%% }homepage}} *)

(** {1:interpreted Interpreted programs}

To use {!Bos} and this setup in an interpreted program, start the
file with:
{[
#!/usr/bin/env ocaml
#use "topfind"
#require "bos.setup"
open Bos_setup
]}
   In [emacs] a [M-x merlin-use bos.setup] will allow merlin
   to function correctly.
*)

(** {1 Results} *)

(** The type for results. *)
type ('a, 'b) result = ('a, 'b) Rresult.result = Ok of 'a | Error of 'b

open Result

val ( >>= ) : ('a, 'b) result -> ('a -> ('c, 'b) result) -> ('c, 'b) result
(** [(>>=)] is {!R.( >>= )}. *)

val ( >>| ) : ('a, 'b) result -> ('a -> 'c) -> ('c, 'b) result
(** [(>>|)] is {!R.( >>| )}. *)

module R = Rresult.R

(** {1 Astring} *)

module Char = Astring.Char
module String = Astring.String

(** {1 Bos} *)

module Pat = Bos.Pat
module Cmd = Bos.Cmd
module OS = Bos.OS

(*---------------------------------------------------------------------------
   Copyright (c) 2016 Daniel C. Bünzli

   Permission to use, copy, modify, and/or distribute this software for any
   purpose with or without fee is hereby granted, provided that the above
   copyright notice and this permission notice appear in all copies.

   THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
   WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
   MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
   ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
  ---------------------------------------------------------------------------*)