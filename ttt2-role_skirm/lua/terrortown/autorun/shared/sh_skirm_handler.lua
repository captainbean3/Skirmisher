SKIRMISHER_DATA = {}


if SERVER then

hook.Add("TTT2PostPlayerDeath","SkirmisherLifeSteal", function(ply, _, attacker)
  if not IsValid(ply) then return end
  if not attacker or not IsValid(attacker) or not attacker:IsPlayer() or not attacker:Alive() then return end
  if attacker:GetSubRole() ~= ROLE_SKIRMISHER then return end
  attacker:SetHealth(math.Clamp(attacker:Health() + GetConVar("ttt_skirm_regain"):GetInt(), 0, attacker:GetMaxHealth())
end)
end
