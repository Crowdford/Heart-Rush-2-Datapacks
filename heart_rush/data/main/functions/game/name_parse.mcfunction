# Get Name
# Setup
loot replace block 0 0 0 container.0 loot application_name:get/skull
data modify storage string:new in set from block 0 0 0 Items[0].tag.SkullOwner.Name
function string:parse
function main:game/name_parsed
