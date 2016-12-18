# Powder Shell

Powder Shell is a terminal based falling sand game written in OCaml!

Created by Quinn Halpin, Sitar Harel, and Tennyson T Bardwell

A final project for Cornell's [CS 3110: Data Structures and Functional Programming, Fall 2016](http://www.cs.cornell.edu/courses/cs3110/2016fa/) 

## Installation

**NOTE:** Our system is known to run substantially slower on Macs which drastically reduces the creative experience. We recommend using Linux to get the full effect of this project - even a virtual machine running Linux on a Mac will perform better than native Mac OS.

This requires OCaml 4.03.0.

If you already have opam installed alongside OCaml, run `make install-dep` to install all dependencies.

If you do not have opam or OCaml, and you are using an Ubuntu based linux OS, simply run `make install-ubuntu`. This will install OCaml and opam using apt-get and then install Powder Shell's dependencies.

## How To Run

### Launching the Game

Run `make` to compile and launch Powder Shell or run `make compile` to compile without running and then run `./main.byte` to launch.
### Playing the Game

Launch the game and press `h` for help.

![Help Menu](media/help_menu.png "Help Menu")

The save file 'beach' is pre-loaded, load it by pressing load and entering 'beach'.

### Customization

Element interactions are defined by a simple JSON structure in `rules/default.json`. Feel free to change them as you wish!

### Testing, Compiling, Cleaning

Run `make test` to compile and run test cases.

Run `make compile` if you wish to only compile. From here running `./main.bytes` will launch the game.

Run `make clean` to remove build files.

