function pc_core:schedulers/60minutes
function pc_core:schedulers/30seconds
function pc_core:schedulers/5minutes
function pc_core:schedulers/1second

function pc_core:schedulers/day_schedule

schedule function pc_core:schedulers/discord_schedule 200s
schedule function pc_core:schedulers/vote_schedule 500s
schedule function pc_core:core/timely 1s

scoreboard players set 1s Database 0
