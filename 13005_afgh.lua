local this = {	
	description = "Extract Enginner",
	missionCode = 10040,
    location	= "AFGH",	
    
	missionGuaranteeGMP = 500000,
    missionTaskList = {0,1,2},
	
	packs = function(missionCode)
		TppPackList.AddLocationCommonScriptPack(missionCode+1)
		TppPackList.AddLocationCommonMissionAreaPack(missionCode+1)
		TppPackList.AddDefaultMissionAreaPack(missionCode+1) 
		end		
    end,
	


	missionMapParams = 
	{ 
		missionArea2 = 
		{ 
			{ 
				name = "trig_innerZone", -- In mission
				vertices = 
				{
					Vector3(727,227,1869),		-- 00c03544 00 00 63 43 00a0e944
					Vector3(30,227,1921),		-- 0000f041 00 00 63 43 0020f044
					Vector3(-81,227,2508),		-- 0000a2c2 00 00 63 43 00c01c45
					Vector3(576,227,2615),		-- 00001044 00 00 63 43 00702345
					Vector3(906,227,2251),		-- 00806244 00 00 63 43 00b00c45
				},
			},
			{ 
				name = "trig_outerZone", -- In mission
				vertices = 
				{
					Vector3(765,238,1838),		-- 00 40 3F 44 79 13 6E 43 00 C0 E5 44
					Vector3(-23,238,1870),		-- 00 00 B8 C1 79 13 6E 43 00 C0 E9 44
					Vector3(-112,238,2539),		-- 00 00 E0 C2 79 13 6E 43 00 B0 1E 45
					Vector3(587,238,2642),		-- 00 C0 12 44 79 13 6E 43 00 20 25 45
					Vector3(938,238,2251),		-- 00 80 6a 44 79 13 6E 43 00 B0 0c 45
				},
			},
		}, 
		safetyArea2 = 
		{ 
			{
				name = "trig_hotZone", -- After Mission complete.
				vertices = 
				{
					Vector3(656,210,2507), 	-- 00 00 24 44 5A 78 52 43 00 B0 1C 45
					Vector3(684,210,1945), 	-- 00 00 2B 44 5A 78 52 43 00 20 F3 44 
					Vector3(53,210,1978), 	-- 00 00 54 42 5A 78 52 43 00 40 F7 44
					Vector3(-2,210,2451),	-- 00 00 00 C0 5A 78 52 43 00 30 19 45
				},
			},  
		}, 
		missionStartPoint = 
			{
				Vector3(141.47,275.51,2353.44),				
			}, 
		heliLandPoint = 
		{
			{
				point 		= Vector3(418.33,278.22,2261.37),
				startPoint 	= Vector3(887.95,309.12,2383.44),
				routeId 	= "lz_drp_field_I0000|rt_drp_field_I_0000"
			},			
			{
				point = Vector3(141.47,275.51,2353.44),
				startPoint = Vector3(-249.77,310.51,1998.40),
				routeId = "lz_drp_fieldWest_S0000|rt_drp_fiieldWest_S_0000"
			},
		}, 
	},
}

return this