#say delaying...
data modify storage string:new in set from block 1 0 0 SkullOwner.Properties.textures[0].Value
execute if data block 1 0 0 SkullOwner.Properties.textures[0].Value run function application_cape:internal_fake/get_success
execute unless data block 1 0 0 SkullOwner.Properties.textures[0].Value run schedule function application_cape:internal_fake/get_delay_loop 1t