#say parsing!
# parse
function s_str:call

# remove skull
setblock 1 0 0 air

# callback
schedule function application_cape:internal/callback 2t
