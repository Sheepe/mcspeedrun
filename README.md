# About

Multiplayer compatible.

Allows you to create checkpoints in whatever configuration with a customized name.

Upon starting the speedrun, it will teleport you to the initial checkpoint and will keep your best times between each checkpoint after that, so you know how much you improve.

**This will only display when the whole run is completed at least once.**

Times will be shown in different colours depending on how well you did, it attempts to follow the general format for speedrunning.

If you fall into the void (below y = 0), it will teleport you back to your last checkpoint.

You get given a "Speedrunning Tools" book at all times if you're in adventure mode. This allows you to start a run, reset your run, enter practice mode (see below), see your best times, and return to the lobby. This button will only appear if you've actually set up a lobby - to do so, go to where you'd like the players to spawn, and run `/function core:set_lobby`, and to remove it, run `/function core:remove_lobby`. Players who join for the first time will be placed here.

# Installation

Place the `pack` folder in your datapacks folder of your world, and upon entering, reload with `/reload`. 

To finish the installation, type `/function core:init`. You're done!

# How to use

Type `/function speedrun:split` in chat to recieve a carrot on a stick. Right clicking this will lock you in place and give you a book and quill. Sign the book with a single letter to cancel the placement, otherwise sign the book with the name of the checkpoint. There you go, you placed a checkpoint!

When holding the tool anywhere in your inventory, all checkpoints will be visible indicated by numbering from 0 to whatever number of checkpoints minus one. The checkpoint denoted zero is the starting position.

Adding more checkpoints will clear everyone's personal best for the whole course but the individual times between checkpoints is not reset.

Using the speedrunning tools book, you can start / reset a run easily, but also enter a mode called Practice Mode. This puts you into the map with no timer, and lets you skip forward or backward sections, and also lets you replay them if you want to depending on the set Checkpoint Mode. You are given a book for these controls, seperate from the Speedrunning Tools book, in which these things are described in more detail.

For servers with multiple people, there is a built-in invisibility mode. By default, players are made invisible if they're within 5 blocks of each other. The following commands will change the modes to whichever you choose:

To remove invisibility entirely: `scoreboard players set invisibility_mode shp_data 0`
To restore to the default setting: `scoreboard players set invisibility_mode shp_data 1`
To make everyone always invisible: `scoreboard players set invisibility_mode shp_data 2`

Note that the setting only effects people in adventure mode.

To clear all checkpoints (and so all data stored), run `/function core:reset`.

You can set up a leaderboard of the best times by going to where you'd like the board to be and running `/function speedrun:leaderboard/spawn`. If you'd like to move it, you just run the same function again in the new location. If you want to remove it altogether, simply run `/function speedrun:leaderboard/remove`

# Technical Details

All chunks containing checkpoints and the lobby spawn are forceloaded, this is to ensure that they are removed/added whenever needed. Such chunks are unforceloaded as soon as they are removed by the system. Removing them manually will not do this.

Unforceload the chunks at your own risk, strange behaviour can emerge.
