# Reset Values
data modify storage simplify:io numbers set value []
data modify storage simplify:main out set value []
data modify storage simplify:main in set from storage string:io out

# Start
function application_name:internal/simplify_start
data modify storage simplify:io out set from storage simplify:main out