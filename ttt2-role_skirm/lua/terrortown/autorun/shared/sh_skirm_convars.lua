CreateConVar("ttt_skirm_regain", 100, {FCVAR_NOTIFY, FCVAR_ARCHIVE})

CreateConVar("ttt_pri_refill_time", 45, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar("ttt_pri_refill_time_missed", 5, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar("ttt_pri_damage_dete", 30, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar("ttt_pri_damage_marker", 30, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar("ttt_pri_show_messages", 1, {FCVAR_NOTIFY, FCVAR_ARCHIVE})

hook.Add("TTTUlxDynamicRCVars", "ttt2_ulx_dynamic_skirmisher_convars", function(tbl)
	tbl[ROLE_SKIRMISHER] = tbl[ROLE_SKIRMISHER] or {}
table.insert(tbl[ROLE_SKIRMISHER], {
		cvar = "ttt_skirm_regain",
		slider = true,
		min = 0,
		max = 100,
		decimal = 0,
		desc = "ttt_skirm_regain (def. 100)"
	})
	end)