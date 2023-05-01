# register skills 
schedule clear dynamic_skill:register
#schedule function dynamic_skill:register 1s

# storage
data modify storage dynamic_skill:main skill set value {}
data modify storage dynamic_skill:main skills set value []
data modify storage dynamic_skill:main binary set value ""
data modify storage dynamic_skill:main stack set value []
data modify storage dynamic_skill:main stack2 set value []
data modify storage dynamic_skill:main stack3 set value []
data modify storage dynamic_skill:main stack4 set value []

# book skills
data modify storage dynamic_skill:main book_skills set value [[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}],[{value:0},{},{}]]
data modify storage dynamic_skill:main book_skill set value {}
scoreboard players set book_skill dynamic_skill -1

# objectives
scoreboard objectives add dynamic_skill dummy
scoreboard objectives add Random dummy
scoreboard players set #-1 dynamic_skill -1
scoreboard players set #1 dynamic_skill 1
scoreboard players set #2 dynamic_skill 2
scoreboard players set #4 dynamic_skill 4
scoreboard players set #5 dynamic_skill 5
scoreboard players set #6 dynamic_skill 6
scoreboard players set #8 dynamic_skill 8
scoreboard players set #10 dynamic_skill 10
scoreboard players set #16 dynamic_skill 16
scoreboard players set #20 dynamic_skill 20
scoreboard players set #40 dynamic_skill 40
scoreboard players set #98 dynamic_skill 98
scoreboard players set #100 dynamic_skill 100
scoreboard players set #667 dynamic_skill 667
scoreboard players set #806 dynamic_skill 806
scoreboard players set #1000 dynamic_skill 1000

# counter/cooldown
scoreboard objectives add dynSkill_sc1 dummy
scoreboard objectives add dynSkill_sc2 dummy
scoreboard objectives add dynSkill_sc3 dummy
scoreboard objectives add dynSkill_sc4 dummy
scoreboard objectives add dynSkill_sc5 dummy
scoreboard objectives add dynSkill_sc6 dummy
scoreboard objectives add dynSkill_sc7 dummy
scoreboard objectives add dynSkill_sc8 dummy
scoreboard objectives add dynSkill_sc9 dummy
scoreboard objectives add dynSkill_sc10 dummy
scoreboard objectives add dynSkill_sc11 dummy
scoreboard objectives add dynSkill_sc12 dummy
scoreboard objectives add dynSkill_sc13 dummy
scoreboard objectives add dynSkill_sc14 dummy
scoreboard objectives add dynSkill_sc15 dummy
scoreboard objectives add dynSkill_sc16 dummy
scoreboard objectives add dynSkill_sc17 dummy
scoreboard objectives add dynSkill_sc18 dummy
scoreboard objectives add dynSkill_sc19 dummy
scoreboard objectives add dynSkill_sc20 dummy
scoreboard objectives add dynSkill_sc21 dummy
scoreboard objectives add dynSkill_sc22 dummy
scoreboard objectives add dynSkill_sc23 dummy
scoreboard objectives add dynSkill_sc24 dummy
scoreboard objectives add dynSkill_sc25 dummy
scoreboard objectives add dynSkill_sc26 dummy
scoreboard objectives add dynSkill_sc27 dummy
scoreboard objectives add dynSkill_sc28 dummy
scoreboard objectives add dynSkill_sc29 dummy
scoreboard objectives add dynSkill_sc30 dummy
scoreboard objectives add dynSkill_sc31 dummy
scoreboard objectives add dynSkill_sc32 dummy
scoreboard objectives add dynSkill_sc33 dummy
scoreboard objectives add dynSkill_sc34 dummy
scoreboard objectives add dynSkill_sc35 dummy
scoreboard objectives add dynSkill_sc36 dummy
scoreboard objectives add dynSkill_sc37 dummy
scoreboard objectives add dynSkill_sc38 dummy
scoreboard objectives add dynSkill_sc39 dummy
scoreboard objectives add dynSkill_sc40 dummy
scoreboard objectives add dynSkill_sc41 dummy
scoreboard objectives add dynSkill_sc42 dummy
scoreboard objectives add dynSkill_st1 dummy
scoreboard objectives add dynSkill_st2 dummy
scoreboard objectives add dynSkill_st3 dummy
scoreboard objectives add dynSkill_st4 dummy
scoreboard objectives add dynSkill_st5 dummy
scoreboard objectives add dynSkill_st6 dummy
scoreboard objectives add dynSkill_st7 dummy
scoreboard objectives add dynSkill_st8 dummy
scoreboard objectives add dynSkill_st9 dummy
scoreboard objectives add dynSkill_st10 dummy
scoreboard objectives add dynSkill_st11 dummy
scoreboard objectives add dynSkill_st12 dummy
scoreboard objectives add dynSkill_st13 dummy
scoreboard objectives add dynSkill_st14 dummy
scoreboard objectives add dynSkill_st15 dummy
scoreboard objectives add dynSkill_st16 dummy
scoreboard objectives add dynSkill_st17 dummy
scoreboard objectives add dynSkill_st18 dummy
scoreboard objectives add dynSkill_st19 dummy
scoreboard objectives add dynSkill_st20 dummy
scoreboard objectives add dynSkill_st21 dummy
scoreboard objectives add dynSkill_st22 dummy
scoreboard objectives add dynSkill_st23 dummy
scoreboard objectives add dynSkill_st24 dummy
scoreboard objectives add dynSkill_st25 dummy
scoreboard objectives add dynSkill_st26 dummy
scoreboard objectives add dynSkill_st27 dummy
scoreboard objectives add dynSkill_st28 dummy
scoreboard objectives add dynSkill_st29 dummy
scoreboard objectives add dynSkill_st30 dummy
scoreboard objectives add dynSkill_st31 dummy
scoreboard objectives add dynSkill_st32 dummy
scoreboard objectives add dynSkill_st33 dummy
scoreboard objectives add dynSkill_st34 dummy
scoreboard objectives add dynSkill_st35 dummy
scoreboard objectives add dynSkill_st36 dummy
scoreboard objectives add dynSkill_st37 dummy
scoreboard objectives add dynSkill_st38 dummy
scoreboard objectives add dynSkill_st39 dummy
scoreboard objectives add dynSkill_st40 dummy
scoreboard objectives add dynSkill_st41 dummy
scoreboard objectives add dynSkill_st42 dummy
scoreboard objectives add dynSkill_sm1 dummy
scoreboard objectives add dynSkill_sm2 dummy
scoreboard objectives add dynSkill_sm3 dummy
scoreboard objectives add dynSkill_sm4 dummy
scoreboard objectives add dynSkill_sm5 dummy
scoreboard objectives add dynSkill_sm6 dummy
scoreboard objectives add dynSkill_sm7 dummy
scoreboard objectives add dynSkill_sm8 dummy
scoreboard objectives add dynSkill_sm9 dummy
scoreboard objectives add dynSkill_sm10 dummy
scoreboard objectives add dynSkill_sm11 dummy
scoreboard objectives add dynSkill_sm12 dummy
scoreboard objectives add dynSkill_sm13 dummy
scoreboard objectives add dynSkill_sm14 dummy
scoreboard objectives add dynSkill_sm15 dummy
scoreboard objectives add dynSkill_sm16 dummy
scoreboard objectives add dynSkill_sm17 dummy
scoreboard objectives add dynSkill_sm18 dummy
scoreboard objectives add dynSkill_sm19 dummy
scoreboard objectives add dynSkill_sm20 dummy
scoreboard objectives add dynSkill_sm21 dummy
scoreboard objectives add dynSkill_sm22 dummy
scoreboard objectives add dynSkill_sm23 dummy
scoreboard objectives add dynSkill_sm24 dummy
scoreboard objectives add dynSkill_sm25 dummy
scoreboard objectives add dynSkill_sm26 dummy
scoreboard objectives add dynSkill_sm27 dummy
scoreboard objectives add dynSkill_sm28 dummy
scoreboard objectives add dynSkill_sm29 dummy
scoreboard objectives add dynSkill_sm30 dummy
scoreboard objectives add dynSkill_sm31 dummy
scoreboard objectives add dynSkill_sm32 dummy
scoreboard objectives add dynSkill_sm33 dummy
scoreboard objectives add dynSkill_sm34 dummy
scoreboard objectives add dynSkill_sm35 dummy
scoreboard objectives add dynSkill_sm36 dummy
scoreboard objectives add dynSkill_sm37 dummy
scoreboard objectives add dynSkill_sm38 dummy
scoreboard objectives add dynSkill_sm39 dummy
scoreboard objectives add dynSkill_sm40 dummy
scoreboard objectives add dynSkill_sm41 dummy
scoreboard objectives add dynSkill_sm42 dummy
scoreboard objectives add dynSkill_si1 dummy
scoreboard objectives add dynSkill_si2 dummy
scoreboard objectives add dynSkill_si3 dummy
scoreboard objectives add dynSkill_si4 dummy
scoreboard objectives add dynSkill_si5 dummy
scoreboard objectives add dynSkill_si6 dummy
scoreboard objectives add dynSkill_si7 dummy
scoreboard objectives add dynSkill_si8 dummy
scoreboard objectives add dynSkill_si9 dummy
scoreboard objectives add dynSkill_si10 dummy
scoreboard objectives add dynSkill_si11 dummy
scoreboard objectives add dynSkill_si12 dummy
scoreboard objectives add dynSkill_si13 dummy
scoreboard objectives add dynSkill_si14 dummy
scoreboard objectives add dynSkill_si15 dummy
scoreboard objectives add dynSkill_si16 dummy
scoreboard objectives add dynSkill_si17 dummy
scoreboard objectives add dynSkill_si18 dummy
scoreboard objectives add dynSkill_si19 dummy
scoreboard objectives add dynSkill_si20 dummy
scoreboard objectives add dynSkill_si21 dummy
scoreboard objectives add dynSkill_si22 dummy
scoreboard objectives add dynSkill_si23 dummy
scoreboard objectives add dynSkill_si24 dummy
scoreboard objectives add dynSkill_si25 dummy
scoreboard objectives add dynSkill_si26 dummy
scoreboard objectives add dynSkill_si27 dummy
scoreboard objectives add dynSkill_si28 dummy
scoreboard objectives add dynSkill_si29 dummy
scoreboard objectives add dynSkill_si30 dummy
scoreboard objectives add dynSkill_si31 dummy
scoreboard objectives add dynSkill_si32 dummy
scoreboard objectives add dynSkill_si33 dummy
scoreboard objectives add dynSkill_si34 dummy
scoreboard objectives add dynSkill_si35 dummy
scoreboard objectives add dynSkill_si36 dummy
scoreboard objectives add dynSkill_si37 dummy
scoreboard objectives add dynSkill_si38 dummy
scoreboard objectives add dynSkill_si39 dummy
scoreboard objectives add dynSkill_si40 dummy
scoreboard objectives add dynSkill_si41 dummy
scoreboard objectives add dynSkill_si42 dummy

scoreboard objectives add book_skill00 trigger
scoreboard objectives add book_skill01 trigger
scoreboard objectives add book_skill02 trigger
scoreboard objectives add book_skill03 trigger
scoreboard objectives add book_skill04 trigger
scoreboard objectives add book_skill05 trigger
scoreboard objectives add book_skill06 trigger
scoreboard objectives add book_skill07 trigger
scoreboard objectives add book_skill08 trigger
scoreboard objectives add book_skill09 trigger
scoreboard objectives add book_skill10 trigger
scoreboard objectives add book_skill11 trigger
scoreboard objectives add book_skill12 trigger
scoreboard objectives add book_skill13 trigger
scoreboard objectives add book_skill14 trigger
scoreboard objectives add book_skill15 trigger

scoreboard players reset * book_skill00
scoreboard players reset * book_skill01
scoreboard players reset * book_skill02
scoreboard players reset * book_skill03
scoreboard players reset * book_skill04
scoreboard players reset * book_skill05
scoreboard players reset * book_skill06
scoreboard players reset * book_skill07
scoreboard players reset * book_skill08
scoreboard players reset * book_skill09
scoreboard players reset * book_skill10
scoreboard players reset * book_skill11
scoreboard players reset * book_skill12
scoreboard players reset * book_skill13
scoreboard players reset * book_skill14
scoreboard players reset * book_skill15

scoreboard objectives add book_skill00o dummy
scoreboard objectives add book_skill01o dummy
scoreboard objectives add book_skill02o dummy
scoreboard objectives add book_skill03o dummy
scoreboard objectives add book_skill04o dummy
scoreboard objectives add book_skill05o dummy
scoreboard objectives add book_skill06o dummy
scoreboard objectives add book_skill07o dummy
scoreboard objectives add book_skill08o dummy
scoreboard objectives add book_skill09o dummy
scoreboard objectives add book_skill10o dummy
scoreboard objectives add book_skill11o dummy
scoreboard objectives add book_skill12o dummy
scoreboard objectives add book_skill13o dummy
scoreboard objectives add book_skill14o dummy
scoreboard objectives add book_skill15o dummy

scoreboard players reset * book_skill00o
scoreboard players reset * book_skill01o
scoreboard players reset * book_skill02o
scoreboard players reset * book_skill03o
scoreboard players reset * book_skill04o
scoreboard players reset * book_skill05o
scoreboard players reset * book_skill06o
scoreboard players reset * book_skill07o
scoreboard players reset * book_skill08o
scoreboard players reset * book_skill09o
scoreboard players reset * book_skill10o
scoreboard players reset * book_skill11o
scoreboard players reset * book_skill12o
scoreboard players reset * book_skill13o
scoreboard players reset * book_skill14o
scoreboard players reset * book_skill15o

# trees
data modify storage dynamic_skill:trees triggers set value {0:{0:{0:{0:0,1:{0:22,1:{1:34,0:{1:40,0:{0:43,1:{1:44,0:45}}}}}},1:{1:{1:19,0:{1:32,0:33}},0:{1:20,0:21}}},1:{1:{1:{0:13,1:{1:29,0:30}},0:{1:14,0:15}},0:{1:{1:16,0:{1:31,0:{1:38,0:39}}},0:{1:17,0:18}}}},1:{1:{1:{1:{1:1,0:{1:23,0:24}},0:{1:2,0:3}},0:{1:{0:4,1:{1:25,0:{1:35,0:36}}},0:{1:5,0:6}}},0:{1:{1:{0:7,1:{1:26,0:27}},0:{1:8,0:9}},0:{1:{1:10,0:{0:28,1:{0:37,1:{1:41,0:42}}}},0:{1:11,0:12}}}}}
data modify storage dynamic_skill:trees conditions set value {0:{1:{0:0,1:{1:8,0:9}},0:{1:1,0:{0:10,1:{1:14,0:15}}}},1:{1:{1:{1:2,0:3},0:{0:4,1:{1:11,0:12}}},0:{1:{1:5,0:6},0:{0:7,1:{1:13,0:{0:16,1:{1:17,0:18}}}}}}}
data modify storage dynamic_skill:trees damage_type set value {0:{0:{1:11,0:12},1:{1:{1:9,0:{1:21,0:{0:23,1:{1:15,0:20}}}},0:{1:8,0:4}}},1:{1:{1:{1:5,0:{0:13,1:{1:2,0:3}}},0:{1:1,0:6}},0:{1:{0:10,1:{1:18,0:19}},0:{1:16,0:22}}}}
data modify storage dynamic_skill:trees health set value {0:{0:{1:{1:0,0:1},0:{0:2,1:{1:21,0:22}}},1:{1:{1:{1:15,0:16},0:{1:17,0:{1:29,0:{1:35,0:{0:38,1:{1:39,0:40}}}}}},0:{1:{1:18,0:19},0:{1:20,0:{1:30,0:31}}}}},1:{1:{1:{1:{1:3,0:4},0:{1:5,0:{1:23,0:{0:32,1:{1:36,0:37}}}}},0:{1:{1:6,0:7},0:{0:8,1:{1:24,0:25}}}},0:{1:{1:{1:9,0:10},0:{1:11,0:{1:26,0:{1:33,0:34}}}},0:{1:{1:12,0:13},0:{0:14,1:{1:27,0:28}}}}}}
data modify storage dynamic_skill:trees sbc_item set value {0:{0:{1:10,0:22},1:{1:{1:27,0:{1:12,0:{0:30,1:{1:33,0:32}}}},0:{1:24,0:31}}},1:{1:{1:{1:23,0:{0:40,1:{1:11,0:14}}},0:{1:21,0:20}},0:{1:{0:15,1:{1:34,0:13}},0:{1:25,0:26}}}}
data modify storage dynamic_skill:trees object_trigger_type set value {0:{0:11,1:{1:31,0:30}},1:{1:{1:10,0:21},0:{1:20,0:{0:32,1:{1:12,0:22}}}}}
data modify storage dynamic_skill:trees effect_stack set value {0:{1:{0:1,1:{1:3,0:19}},0:{1:5,0:{0:20,1:{1:27,0:31}}}},1:{1:{1:{1:8,0:11},0:{0:10,1:{1:2,0:14}}},0:{1:{1:26,0:18},0:{0:4,1:{1:17,0:{0:32,1:{1:22,0:25}}}}}}}
data modify storage dynamic_skill:trees effects set value {0:{0:{0:0,1:{1:{1:16,0:17},0:{0:18,1:{1:28,0:{1:36,0:{0:43,1:{1:42,0:45}}}}}}},1:{1:{1:{1:11,0:12},0:{1:40,0:{1:25,0:{1:32,0:35}}}},0:{1:{1:13,0:14},0:{1:15,0:{1:26,0:27}}}}},1:{1:{1:{1:{0:1,1:{1:19,0:20}},0:{1:2,0:{1:37,0:{1:29,0:30}}}},0:{1:{1:3,0:4},0:{0:5,1:{1:41,0:21}}}},0:{1:{1:{1:6,0:39},0:{1:7,0:{0:22,1:{0:31,1:{1:38,0:44}}}}},0:{1:{1:8,0:9},0:{1:10,0:{1:23,0:24}}}}}}
