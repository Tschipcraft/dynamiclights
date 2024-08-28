##by Tschipcraft

# Iterate over all stacks added by Curios
execute if data storage dynamiclights:curios stacks[0].StacksHandler.Stacks.Items[0] run function dynamiclights:internal/sources/mod_support/curios/iterate_items
data remove storage dynamiclights:curios stacks[0]

execute if data storage dynamiclights:curios stacks[0] run function dynamiclights:internal/sources/mod_support/curios/iterate_stacks
