gamerule sendCommandFeedback false

#converts base64 char array into ascii char array
function base64:callio

#parses output
function parser:callio

#sets up to do unix conversion
data modify storage rev_conv:main in set from storage string:new out[{Name:[t,i,m,e,s,t,a,m,p]}].Value.num

data remove storage rev_conv:main in[-1]
data remove storage rev_conv:main in[-1]
data remove storage rev_conv:main in[-1]

scoreboard players set base= rev_conv.num 10
function rev_conv:call

#tellraw @a {"nbt":"out","storage":"string:new"}
scoreboard objectives add unix dummy
scoreboard players set time unix 0

scoreboard players remove time unix 649368800
scoreboard players operation time unix /= 86400 unix
scoreboard players operation time unix %= 96 unix

data modify storage sotd:fake storage set value ["zakcO7IAfqQP3QB0Ing","3zyRiN+MowABvmA","71dWV2VQE","RRXFOjBs","XzD1VwCWXIc","uTS3ol6QMHiA","McnHV+FQcH2","mUbe66mCA","U4zOlhHg","rVtW3qdvTt6dvE9kXp4","c1yP17gA","rb/feQR7oGXIGP/AFK4U2g","FanR0VMjhhgZpDDAzWGA","zdvgkU/7BF2jtvscCCqvbY","Lf481ODbon8reiXMitf/b","KwJV6jN0ge7wHuoDwstjr7","b6i166mD90Ac","MQGd69wA","/+N2M/1AA","3xXQIqZHCA","C2J4DI3DYBUgeYAA","48od6zUIuA","P9uR0QC","0wL2MPxdIAQ","A48Xk6A","j0tmVmAx1kBg","bYdl6pveAPAAeQAwoAUpNs","99ouCLjHTwWwWvA","783kFmRgVNTuA","GUHfVTjw","L5VuVmAx8XWAEA","RWDmVsAupAPSgHvoB66AYC","KwZX0/wA9oESBZVAA","k+qj07uoiKBJO7mYkA","mUqId0kF6iCgndrg3d8GiQ","Lc3guzA07KAHywERw","SVzv8zwA94A","Jc3n8yIoffY","PxWWSeYDBAY","P6ir09BAQ","bcUx1moRcA","i1rJ+ifT4Reng","P3hvgpM0C7hA","KQwPFmAgQCAC0i","7d40EUl5SX5wId2ArsAKA","NY5OMOYCFN3aAh0EBDmQAA","j14XVmCr1p/g","u9xHVmHryxA","0aNXYDuQIETdRPA","CwHOY/1CcgOyAD","PbaVyML3QBfIA","rSyOMOYCHRAK7MBXRgFA","9wD/k6FN3iCjrkFHSQUA","txsZq76AQ","FTVgzsJ8yPwewg","k+BfYDpIbdzh+D3gCIqCIA","r6WKedBiGvDzAc+2A","SwP2VOCM/IyzD06CBAOqQ","8wNHZj/owqr9jgVeEg","iQCYzRivIA","DeoOY92u/OAA","QY5N65JdKCgpSbs","5TymxGEoGEYAZRgA","Sww+xUU40","b7eZq7oAPUAE","lQtoDI/WAqQA1U9E","rx2KV0kD","R/wALqYE","WXKITdKAQE/SAAZXZQAQ","H4/RVOCKfBzf8gLV","RcWKV3uA7KJ93HMg","cwCf1/D4cFpvcCBihsYQyA","NfsHUUnJSc/uKMopOA4LyA","z9cgdTs4ig","Wd4pqKP4Q","mf5+CLhsE8wAA","9RIYLME/qAD3wA9IAe8AEA","6Uq/11IP7YDw","r9aKUUnJSclJyUnJScg","QUr+664CuzAVzD","2+duepwEQg","kVpmVODEN3xfe4CBZS","o2DRJIC5AA","44lTVT2w","Ch5rijINiqQAC0i","uy4uF3Q/+pAoyze6AB9Y","c6Cv8PrgNbZI","U+CQzsVMpg5xA","q4afgpPvZh08gG+tUIA","Aed/1mAR1EH75B+8QcfW","359HZhBHkBmAxhGQNbbo","b1O4d3QBOoAkRQ","P6KuShAo","vSqBOiAMv3mA7","JerfgpMv6CA","P8qR+IBiD1IB"]

execute if score time unix matches 1.. run function application_cape:internal_fake/scroll

data modify storage string:new in set from storage sotd:fake storage[0]
function string:parse
function application_cape:internal_fake/callback_2
