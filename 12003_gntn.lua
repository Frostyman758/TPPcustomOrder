local this={	
	missionCode=12003, --Mission id, here taken from tex's range as it's also just a test thing
    location="GNTN", --Location name id, from the location script
     
	packs = function(missionCode)
    TppPackList.AddLocationCommonScriptPack(missionCode)
    TppPackList.AddLocationCommonMissionAreaPack(missionCode)
    TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.ENEMY_HELI)
	TppPackList.AddMissionPack(TppHelicopter.GetEnemyColoringPack(TppDefine.ENEMY_HELI_COLORING_TYPE.BLACK))

    TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.HELICOPTER)
    TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.MAFR_HOSTAGE)
    TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.WEST_LV)
    TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.WEST_WAV)
    TppPackList.AddMissionPack(TppDefine.MISSION_COMMON_PACK.WEST_WAV_MACHINE_GUN)
 
    local settings={
        {type="enemy",name="sol_Agent_0000",faceId="mafr",bodyId=TppEnemyBodyId.uss0_uniq8_q08},
    }
	TppEneFova.AddUniqueSettingPackage(settings)
    --Mission pack must ALWAYS BE LAST IN THE LIST
    TppPackList.AddMissionPack"/Assets/tpp/pack/mission2/story/s12003/s12003.fpk"	
end,
missionTaskList={0,1,2,3,},

    --  i need to make the .traps somehow
    --  mantis is fixed now, weird that it works on custom map without being loaded on mission files

	missionGuaranteeGMP=1200000, -- GMP received after completing the mission
    fovaSetupFunc = function(locationName,missionId)
        TppEneFova.SetupFovaForLocation("mafr") --faces
		TppSoldierFace.SetUseZombieFova{enabled=true}
		if not IvarProc.EnabledForMission("customSoldierType",missionId) then
			local bodies={
				-- fovas applied in the enemy script
				{TppEnemyBodyId.uss0_ptrl0_v00,255}, 
				{TppEnemyBodyId.uss1_ptrl0_v00,255},
				{TppEnemyBodyId.uss0_uniq8_v00,255},
				{TppEnemyBodyId.uss0_uniq6_v00,255},
				{TppEnemyBodyId.uss0_rfrc0_v00,255},
			}
			TppSoldierFace.OverwriteMissionFovaData{body=bodies}
		end
    end,
    weaponIdTable={ 
		NORMAL={
			HANDGUN=TppEquip.EQP_WP_West_hg_010, -- hg00_main0_aw0//near no change
			ASSAULT=TppEquip.EQP_WP_West_ar_010, -- ar00_main0_aw6//similar to ar00_main0_aw1 from gz
			SMG=TppEquip.EQP_WP_East_sm_010,	 -- sm00_main0_aw0//near no change, alt is East_sm_030 which has a suppressor
			SNIPER=TppEquip.EQP_WP_West_sr_010,  -- sr01_main0_aw0//near no change to sr01_main0_aw1 (flashlight)
			SHOTGUN=TppEquip.EQP_WP_Com_sg_010,  -- sg01_main0_aw0//near no change (flashlight)
			MG=TppEquip.EQP_WP_West_mg_020,	     -- SKULL MG//no equivalent for slot in gz
			MISSILE=TppEquip.EQP_WP_West_ms_010, -- ms02_main0_aw0//similar to ms02_main0_def from gz
			SHIELD=TppEquip.EQP_SLD_SV,			 -- SVS//no equivalent for slot in gz
		},
	},
    enableOOB=true,--Enable out of bounds system (innerZone, outerZone, hotZone)
    missionMapParams={
        --Normal mission area zones as they appear on the iDroid
        --The actual in-game check traps are in .trap files.
        missionArea2 = {
            --Leaving the innerZone will only warn the player that they're leaving
            { 
                name="trig_innerZone", 
                --.trap only:
                --minY=-104.595,maxY=1299.037,
                vertices={ 
              --Vector3(200,40,-204),
              --Vector3(-400,40,-204),
              --Vector3(-400,40,395),
              --Vector3(200,40,395),
                },  
            },
            --Leaving the outerZone will actually trigger the mission clear/abort
            --Commented out as it will be be displayed alongside the innerZone otherwise
            --[[
            {
                name="trig_outerZone",
                --.trap only:
                --minY=-213.1406,maxY=1299.037,
                vertices={ 
                 Vector3(200,40,-204),
                 Vector3(-400,40,-204)
                 Vector3(-400,40,395),
                 Vector3(200,40,395),
                },  
            },
            ]]
        },
        --Hot zone as it appears on the iDroid
        safetyArea2 = {
            { 
                name="trig_hotZone", 
                --.trap only:
                --minY=-104.595,maxY=1299.037,
                vertices={ 
               --Vector3(200,40,-204),
               --Vector3(-400,40,-204),
               --Vector3(-400,40,395),
               --Vector3(200,40,395),
                },  
            },
        },
        missionStartPoint = {
            --Vector3 array
            --Points on the iDroid map where the order boxes/free roam-to-mission ground mission start point

        },
        heliLandPoint = {
			--Mission start LZs
			--"point" is the UI point on the map
			--startPoint is the player's heli-less player start position (which in vanilla entries is actually where the player would be at the start of the heli drop sequence)
			--routeId is the name of the heli drop route, it also has to be registered in the sequence subscript's missionStartPosition.helicopterRouteList
			--None here would spawn the player at startPos
		},
    },
    startPos={-218.93956,38.8139343,298.308563},--Helicopter-less start position override

    heliSpaceFlags={
        SkipMissionPreparetion=false,
        NoBuddyMenuFromMissionPreparetion=true,
        NoVehicleMenuFromMissionPreparetion=true,
        DisableSelectSortieTimeFromMissionPreparetion=true,
    },

}
return this