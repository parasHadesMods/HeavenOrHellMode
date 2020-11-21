ModUtil.RegisterMod("HeavenOrHellMode")

ModUtil.WrapBaseFunction("CreateNewHero", function(baseFunc, prevRun, args)
  local hero = baseFunc(prevRun, args)
  if GetNumMetaUpgrades("NoInvulnerabilityShrineUpgrade") >= 1 then
    AddIncomingDamageModifier( hero, {
      Name = "HeavenOrHellMode",
      GlobalMultiplier = 10000
    })
    AddOutgoingDamageModifier( hero, {
      Name = "HeavenOrHellMode",
      GlobalMultiplier = 10000
    })
  end
  return hero
end, HeavenOrHellMode)
