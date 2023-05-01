data modify storage sbc:shield temp set value []
execute if score pattern Temp matches 1.. run function egui:gui/util/create_pattern
execute if score pattern Temp matches 1.. run data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns prepend from storage sbc:shield temp[]