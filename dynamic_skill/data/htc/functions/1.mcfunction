execute unless data storage text:int tree.1.0 run data modify storage text:out chars append from storage text:int tree.1
execute unless data storage text:int tree.1.0 run data modify storage text:int cb set value "found"
execute if data storage text:int tree.1.0 run data modify storage text:int tree set from storage text:int tree.1