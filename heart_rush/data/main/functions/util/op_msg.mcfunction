setblock 0 0 1 minecraft:command_block[conditional=false,facing=up]{Command:"data merge block ~ ~ ~ {auto:0b}"}
setblock 0 1 1 minecraft:chain_command_block[conditional=false,facing=up]{CustomName:'{"extra":[{"translate":"space.-372"}],"text":"Operator Information]"}',Command:"gamerule commandBlockOutput true",auto:1b}
setblock 0 2 1 minecraft:chain_command_block[conditional=false,facing=up]{CustomName:'{"translate":"space.-48"}',Command:"kill @e[tag=op_message]",auto:1b}
setblock 0 3 1 minecraft:chain_command_block[conditional=false,facing=up]{Command:"gamerule commandBlockOutput false",auto:1b}

summon armor_stand ~ ~ ~ {CustomName:'["   ",{"text":"<This message is only visible for operators>","color":"gray"},{"color":"gray","text":"]"},{"translate":"space.-max"}]',Tags:["op_message"]}
data merge block 0 0 1 {auto:1b}