# Edra

Edra is the name of the application created for this thesis.

The app should be able to load and execute programs in Brainfuck and CHIP-8 from the command line and / or GUI.

The user should be able to switch between interpreted / JIT execution modes, get benchmarks and the app should also have tests. Execution for both modules should be able to be ran on a separate thread or on the main thread as well.

For Brainfuck the user should be able to select the optimization levels, especially useful for benchmarks and where the output will be made, this probably will have to be done using ini files and the TUI, but there should also be a GUI display mode for pretty output.

For CHIP-8, execution should be able to be paused, everything related to the virtual machine should be able to be customized (for example the output colors, the buzzing sound or execution speed unless uncapped).

Optionally, the app should organize the programs into a simple, nice to use format for the user to execute and save user settings into .ini files for later usage (similar to Retroarch but simpler).

Command line usage is recommended especially for benchmarks, where they would run without output / with TUI output at best.

The app should be cross-platform, working at least on Windows and Linux. Optionally it should work on my PSVita.

If the app will run on the PSVita, it should also have controller support / touch support (i.e mouse support, they are treated the same in SDL3 if the correct flag is set).