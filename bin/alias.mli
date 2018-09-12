open Stdune

type t =
  { name : string
  ; recursive : bool
  ; dir : Path.t
  ; contexts : Dune.Context.t list
  }

val of_string : Common.t -> string -> contexts:Dune.Context.t list -> t option

val to_log_string : t -> string

val parse_dir_and_contexts
  :  Path.t
  -> Dune.Context.t list
  -> Path.t * Dune.Context.t list
