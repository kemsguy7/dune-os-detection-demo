# Dune OS Detection Demo

This repository contains two OCaml/Dune projects demonstrating different approaches to operating system detection:

1. **Normal OS Detection** - Accurately detects the current OS at runtime
2. **Opposite OS Detection** - Reports the opposite of the actual OS (MacOS ↔ Linux)

## Purpose

This project serves as:
- A demonstration of Dune's build system capabilities
- An example of OS detection in OCaml
- A comparison of build-time vs runtime detection approaches
- A learning exercise for Dune project configuration

## Projects

### 1. Normal OS Detection
- Uses runtime detection with `Sys` and `Unix` modules
- Accurately reports the current operating system
- Implementation: `normal_os/`

### 2. Opposite OS Detection
- Inverts the OS detection (MacOS → Linux, Linux → MacOS)
- Demonstrates build-time vs runtime differences
- Implementation: `opposite_os/`

## Requirements

- OCaml (≥ 4.14.1 recommended)
- Dune (≥ 3.0)
- opam packages: `fmt`, `unix`

## Usage

For each project:
```bash
cd normal_os  # or opposite_os
dune build
dune exec ./project_name.exe