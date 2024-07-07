##by Tschipcraft
# Gets initial fuse of tnt

# Fuse NBT tag was renamed in 23w42a
execute if score $global ts.dl.version matches 3684.. store result score @s ts.dl.tnt.fuse run data get entity @s fuse
execute if score $global ts.dl.version matches ..3683 store result score @s ts.dl.tnt.fuse run data get entity @s Fuse
tag @s add ts.dl.tnt.setup
