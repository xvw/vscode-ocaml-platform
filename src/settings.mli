open Import

type 'a t

val get : 'a t -> 'a option

val set : 'a t -> 'a -> unit Promise.t

val create :
     scope:WorkspaceConfiguration.configurationTarget
  -> key:string
  -> ofJson:(Js.Json.t -> 'a)
  -> toJson:('a -> Js.Json.t)
  -> 'a t

val string :
  scope:WorkspaceConfiguration.configurationTarget -> key:string -> string t
