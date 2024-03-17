local this={
	description="Episode 10 - modded",
	missionCode=10052,
    location="AFGH",
    enableOOB=true,
    packs=function(missionCode)

      TppPackList.AddLocationCommonScriptPack(missionCode)
      TppPackList.AddLocationCommonMissionAreaPack(missionCode)
      TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.AFGH_HOSTAGE)
      TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.EAST_LV)
      TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.EAST_WAV)
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s10052/s10052_mod.fpk" --custom frt
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/common/mis_com_enemy_heli.fpk" --fpk for enemy heli
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s10052/quest_revenge_box.fpk"  -- added for destructible boxes
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s10052/quest_revenge01.fpk"  -- added for destructible boxes      
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s10052/uavdrone.fpk"  -- added to have uav drones
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s10052/simplecamera.fpk"  -- added to have simple cameras
      TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s10052/switchgimmickbreakable.fpk" -- added to have switch gimmicks
      TppPackList.AddDefaultMissionAreaPack(missionCode)
      do
        local settings={
          {type="hostage",name="hos_target_0000",faceId=607,bodyId=200},
          {type="enemy",name="sol_s10052_transportVehicle_0000",faceId=608,bodyId=263}
        }
        TppEneFova.AddUniqueSettingPackage(settings)
      end
        
	 end,

   missionMapParams = 
   { 
     
    missionArea2 = { 
      { name="trig_innerZone", vertices={ Vector3(45.68,205.75,2176.00),Vector3(45.70,205.75,1811.34),Vector3(-1640.33,205.75,125.27),Vector3(-2048.00,205.75,125.27),Vector3(-2048.00,205.75,1408.00),Vector3(-1280.00,205.75,2176.00), },  },  
    }, 
    safetyArea2 = { 
      { name="trig_hotZone", vertices={ Vector3(-2030.49,205.75,638.47),Vector3(-2030.49,205.75,850.94),Vector3(-719.94,205.75,2158.71),Vector3(-378.96,205.75,2158.71),Vector3(-293.85,205.75,2073.61),Vector3(-293.85,205.75,1495.73),Vector3(-1320.96,205.75,468.49),Vector3(-1860.19,205.75,468.49), },  },  
    }, 
    missionStartPoint = {Vector3(-425.12,282.10,2004.85),}, 
    heliLandPoint = {{point=Vector3(-424.83,289.10,2004.96),startPoint=Vector3(-424.83,289.10,2004.96),routeId="lz_drp_remnants_S0000|rt_drp_remnants_S_0000"},}, 

  },

  
}

return this