open Fmt

let detect_os () =
  if Sys.os_type = "Unix" then
    match In_channel.input_line (Unix.open_process_in "uname -s") with
    | Some "Darwin" -> "MacOS"
    | Some "Linux" -> "Linux"
    | Some "Win32" -> "Windows"
    | _ -> "Unknown Unix"
  else
    Sys.os_type

let () =
  pf stdout "Hello, World! Running on %s@." (detect_os ())