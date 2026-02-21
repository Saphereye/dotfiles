# Pull debug symbols automatically from debuginfod servers (enables source-level
# debugging for system libraries like glibc without installing -dbg packages)
set debuginfod enabled on

# Disable AVX-512 and AVX2 in glibc so process record/replay works
# (glibc picks optimized routines by default which use instructions GDB can't emulate)
set environment GLIBC_TUNABLES glibc.cpu.hwcaps=-AVX512F,-AVX512BW,-AVX2

# Don't pause output with --More-- prompts
set pagination off

# Don't ask "are you sure?" for quit, kill, etc.
set confirm off

# Print structs with each field on its own line instead of one long blob
set print pretty on

# Show array indices ([0], [1], ...) when printing arrays
set print array-indexes on

# Print actual derived type of C++ objects rather than the declared base type
set print object on

# Include static members when printing C++ objects
set print static-members on

# Demangle C++ symbol names (show foo::bar() instead of _ZN3foo3barEv)
set print demangle on

# Use GNU v3 (Itanium ABI) demangling, correct for modern g++ and clang++
set demangle-style gnu-v3

# Show 20 lines of source context around the current line (default is 10)
set listsize 20

# Enable the TUI (text user interface) with source/asm panels
tui enable

# Show source and disassembly windows simultaneously
layout split
