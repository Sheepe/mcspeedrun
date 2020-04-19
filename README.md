# About

Multiplayer compatible.

Allows you to create checkpoints in whatever configuration with a customized name.

Upon starting the speedrun, it will teleport you to the initial checkpoint and will keep your best times between each checkpoint after that, so you know how much you improve.

**This will only display when the whole run is completed at least once.**

Times will be shown in different colours depending on how well you did, it attempts to follow the general format for speedrunning.

If you fall into the void (below y = 0), it will teleport you back to your last checkpoint.

More tools will be added at a later date as well as a better interface, this is mostly a beta datapack but it's completely usable and should have little to no bugs (depending on how violently you use it).

# Installation

Place the `pack` folder in your datapacks folder of your world, and upon entering, reload with `/reload`. 

To finish the installation, type `/function core:init`. You're done!

# How to use

Type `/function speedrun:split` in chat to recieve a carrot on a stick. Right clicking this will lock you in place and give you a book and quill. Sign the book with a single letter to cancel the placement, otherwise sign the book with the name of the checkpoint. There you go, you placed a checkpoint!

When holding the tool anywhere in your inventory, all checkpoints will be visible indicated by numbering from 0 to whatever number of checkpoints minus one. The checkpoint denoted zero is the starting position.

Adding more checkpoints will clear everyone's personal best for the whole course but the individual times between checkpoints is not reset.

To start the speedrun, run `/function speedrun:start_run` in chat. You cannot start if you have the checkpoint tool in your inventory. This will instantly teleport you to the starting checkpoint, clear your inventory and put you into adventure mode with saturation.

You can reset mid-run by typing `/function speedrun:reset`.

There are currently no tools that allow non server-operators to reset players who are currently running, or tools that allow them to start the run, so these must be set up independently for the time being, as this is just being released for those who want to use it.

To clear all checkpoints (and so all data stored), run `/function core:reset`.
