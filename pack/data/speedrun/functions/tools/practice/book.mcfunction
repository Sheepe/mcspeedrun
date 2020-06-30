# Author: SirSheepe

clear @s minecraft:written_book{BookItem:2b}

execute if score @s shp_pcheckmode matches 1 run replaceitem entity @s hotbar.0 minecraft:written_book{BookItem:2b,pages:['["",{"text":"-------------------","color":"gray"},{"text":"\\n ","color":"reset"},{"text":"Practice Mode Tools","color":"#E654C2"},{"text":"\\n","color":"reset"},{"text":"-------------------","color":"gray"},{"text":"   [Back to Start]","bold":true,"color":"#ffa41f","clickEvent":{"action":"run_command","value":"/trigger shp_reset_tr set 1"},"hoverEvent":{"action":"show_text","contents":"Go back to the start of the course."}},{"text":"\\n\\n","color":"reset"},{"text":"Skips: ","color":"dark_gray"},{"text":"[+1]","color":"#1BDB1B","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set 1"},"hoverEvent":{"action":"show_text","contents":"Skip ahead one section"}},{"text":" ","color":"#1BDB1B"},{"text":"[+3]","color":"#1BDB1B","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set 3"},"hoverEvent":{"action":"show_text","contents":"Skip ahead three sections"}},{"text":" ","color":"#1BDB1B"},{"text":"[+5]","color":"#1BDB1B","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set 5"},"hoverEvent":{"action":"show_text","contents":"Skip ahead five sections"}},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[-1]","color":"#D21215","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set -1"},"hoverEvent":{"action":"show_text","contents":"Go back one section"}},{"text":" ","color":"#D21215"},{"text":"[-3]","color":"#D21215","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set -3"},"hoverEvent":{"action":"show_text","contents":"Go back three sections"}},{"text":" ","color":"#D21215"},{"text":"[-5]","color":"#D21215","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set -5"},"hoverEvent":{"action":"show_text","contents":"Go back five sections"}},{"text":"\\n\\n","color":"reset"},{"text":"Checkpoint Behaviour:\\n\\n","color":"dark_gray"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"[Normal]","bold":true,"underlined":true,"color":"#2CC8D8","hoverEvent":{"action":"show_text","contents":"Checkpoints can be collected as normal."}},{"text":" "},{"text":"[Reset]","bold":true,"color":"#E5458D","clickEvent":{"action":"run_command","value":"/trigger shp_pmode_tr set 2"},"hoverEvent":{"action":"show_text","contents":"Finishing a section will return you to the start of it."}},{"text":" ","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"asd"}},{"text":"\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020By SirSheepe","bold":true,"color":"#EAEADA"}]'],title:"Practice Mode Tools",author:SirSheepe,display:{Lore:["Tools for practice mode"]}}


execute if score @s shp_pcheckmode matches 2 run replaceitem entity @s hotbar.0 minecraft:written_book{BookItem:2b,pages:['["",{"text":"-------------------","color":"gray"},{"text":"\\n ","color":"reset"},{"text":"Practice Mode Tools","color":"#E654C2"},{"text":"\\n","color":"reset"},{"text":"-------------------","color":"gray"},{"text":"   [Back to Start]","bold":true,"color":"#ffa41f","clickEvent":{"action":"run_command","value":"/trigger shp_reset_tr set 1"},"hoverEvent":{"action":"show_text","contents":"Go back to the start of the course."}},{"text":"\\n\\n","color":"reset"},{"text":"Skips: ","color":"dark_gray"},{"text":"[+1]","color":"#1BDB1B","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set 1"},"hoverEvent":{"action":"show_text","contents":"Skip ahead one section"}},{"text":" ","color":"#1BDB1B"},{"text":"[+3]","color":"#1BDB1B","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set 3"},"hoverEvent":{"action":"show_text","contents":"Skip ahead three sections"}},{"text":" ","color":"#1BDB1B"},{"text":"[+5]","color":"#1BDB1B","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set 5"},"hoverEvent":{"action":"show_text","contents":"Skip ahead five sections"}},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[-1]","color":"#D21215","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set -1"},"hoverEvent":{"action":"show_text","contents":"Go back one section"}},{"text":" ","color":"#D21215"},{"text":"[-3]","color":"#D21215","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set -3"},"hoverEvent":{"action":"show_text","contents":"Go back three sections"}},{"text":" ","color":"#D21215"},{"text":"[-5]","color":"#D21215","clickEvent":{"action":"run_command","value":"/trigger shp_skip_tr set -5"},"hoverEvent":{"action":"show_text","contents":"Go back five sections"}},{"text":"\\n\\n","color":"reset"},{"text":"Checkpoint Behaviour:\\n\\n","color":"dark_gray"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"[Normal]","bold":true,"color":"#2CC8D8","clickEvent":{"action":"run_command","value":"/trigger shp_pmode_tr set 1"},"hoverEvent":{"action":"show_text","contents":"Checkpoints can be collected as normal."}},{"text":" "},{"text":"[Reset]","bold":true,"underlined":true,"color":"#E5458D","hoverEvent":{"action":"show_text","contents":"Finishing a section will return you to the start of it."}},{"text":" ","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"asd"}},{"text":"\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020By SirSheepe","bold":true,"color":"#EAEADA"}]'],title:"Practice Mode Tools",author:SirSheepe,display:{Lore:["Tools for practice mode"]}}