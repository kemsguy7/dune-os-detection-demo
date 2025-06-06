open Fmt

let detect_opposite_os () =
  if Sys.os_type = "Unix" then
    match In_channel.input_line (Unix.open_process_in "uname -s") with
    | Some "Darwin" -> "Linux"  (* MacOS → Linux *)
    | Some "Linux" -> "MacOS"   (* Linux → MacOS *)
    | Some "Win32" -> "Not Windows" (* Windows → Not Windows *)
    | _ -> "Mystery OS"         (* Unknown → Mystery OS *)
  else
    "Opposite of " ^ Sys.os_type (* For non-Unix systems *)

let () =
  pf stdout "Hello, World! Apparently running on %s@." (detect_opposite_os ())