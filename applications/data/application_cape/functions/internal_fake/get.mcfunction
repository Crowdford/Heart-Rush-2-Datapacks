#say load parser
# reset parser
function s_str:load

# Reading value from a skull
gamerule sendCommandFeedback true
data modify storage s_str:io in set value {string:"",get:2}
schedule function application_cape:internal_fake/get_delay_loop 1t
