#> c3func:sandbag/strong
#

# サンドバッグ [強] を召喚

# サンドバッグを召喚するぞ
    summon skeleton ~ ~ ~ {CustomName:'[{"text":"サンドバッグ","color":"white","bold":true},{"text":" ","bold":false},{"text":"[","bold":false,"color":"gray"},{"text":" ","bold":false,"color":"gray"},{"text":"強","color":"red"},{"text":" ","color":"red","bold":false},{"text":"]","color":"gray","bold":false}]',CustomNameVisible:1b,Health:1024f,NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["mosco.mob","mosco.mob.0","mosco.mob.0_temp","mosco.enemy"],HandDropChances:[0f,0f],ArmorItems:[{components: {"minecraft:trim": {material: "minecraft:iron", show_in_tooltip: 0b, pattern: "minecraft:wild"}, "minecraft:dyed_color": {show_in_tooltip: 0b, rgb: 16777215}}, count: 1, id: "minecraft:leather_boots"},{components: {"minecraft:trim": {material: "minecraft:iron", show_in_tooltip: 0b, pattern: "minecraft:wild"}, "minecraft:dyed_color": {show_in_tooltip: 0b, rgb: 16777215}}, count: 1, id: "minecraft:leather_leggings"},{components: {"minecraft:trim": {material: "minecraft:iron", show_in_tooltip: 0b, pattern: "minecraft:wild"}, "minecraft:dyed_color": {show_in_tooltip: 0b, rgb: 16777215}}, count: 1, id: "minecraft:leather_chestplate"},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1956895130,1599424056,-1895436467,-742848878],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZjM2U3NDQ0YWQ1N2Y5NjljZmZlOWQ0NGYxMGQxNjE4YWY2OTc3ZTk0NDM5NTFlYjY5NzkwYjZiMDUxNzcxYyJ9fX0="}]}}}],attributes:[{id:max_health,base:1024f}]}

# スコアを設定
    scoreboard players set @n[tag=mosco.mob.0_temp] c3func.mob_damage.hp_max 102400
    scoreboard players set @n[tag=mosco.mob.0_temp] c3func.mob_damage.hp_current 102400

# 演出、音を出す
    playsound minecraft:block.anvil.place block @s ~ ~ ~ 1 1.5
    particle minecraft:trial_spawner_detection ~ ~ ~ 0.25 0.5 0.25 0 25
    particle minecraft:ominous_spawning ~ ~ ~ 0.05 1 0.05 1.0 20
    particle minecraft:soul_fire_flame ~ ~ ~ 0.25 1 0.25 0 15
    particle minecraft:flame ~ ~ ~ 0.25 1 0.25 0 15

# 演出終了
    tag @n[tag=mosco.mob.0_temp] remove mosco.mob.0_temp