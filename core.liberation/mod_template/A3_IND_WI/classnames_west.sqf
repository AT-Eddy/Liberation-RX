// *** FRIENDLIES ***
GRLIB_side_friendly = INDEPENDENT;

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf
// AAF Winter Faction [by MALLINGA] - Mod

huron_typename = "AAF_Winter_Heli_Transport_02_F";  // comment to use value from lobby/server.cfg
FOB_typename = "Land_Cargo_HQ_V2_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "B_Truck_01_box_F";
Respawn_truck_typename = "AAF_Winter_Truck_02_medical_F";
ammo_truck_typename = "AAF_Winter_Truck_02_ammo_F";
fuel_truck_typename = "AAF_Winter_Truck_02_fuel_F";
repair_truck_typename = "AAF_Winter_Truck_02_Repair_F";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "AAF_Winter_Helipilot_F";
crewman_classname = "AAF_Winter_crew_F";

chimera_vehicle_overide = [
  ["B_Heli_Light_01_F",  "AAF_Winter_Heli_light_03_unarmed_F"],
  ["B_Heli_Transport_01_F", "AAF_Winter_Heli_light_03_unarmed_F"]
];


// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units_west = [
	["Alsatian_Random_F",0,0,0,GRLIB_perm_max],
	["Fin_random_F",0,0,0,0],
	["AAF_Winter_soldier_F",1,0,0,0],
	["AAF_Winter_Soldier_medic_F",1,0,0,0],
	["AAF_Winter_engineer_F",1,0,0,0],
	["AAF_Winter_soldier_GL_F",1,0,0,GRLIB_perm_inf],
	["AAF_Winter_soldier_M_F",1,0,0,GRLIB_perm_inf],
	["AAF_Winter_soldier_LAT_F",1,0,0,0],
	["AAF_Winter_Soldier_AR_F",1,0,0,GRLIB_perm_inf],
	["AAF_Winter_diver_F",1,0,0,GRLIB_perm_inf],
	["AAF_Winter_Soldier_exp_F",1,0,0,GRLIB_perm_log],
	["AAF_Winter_soldier_AA_F",1,0,0,GRLIB_perm_log],
	["AAF_Winter_soldier_AT_F",1,0,0,GRLIB_perm_log],
	["AAF_Winter_sniper_F",1,0,0,GRLIB_perm_log],
	[crewman_classname,1,0,0,GRLIB_perm_inf],
	[pilot_classname,1,0,0,GRLIB_perm_log]
];

units_loadout_overide = [];

light_vehicles = [
	["AAF_Winter_Quadbike_01_F",1,5,1,0],
	["AAF_Winter_Boat_Transport_01_F",1,25,1,GRLIB_perm_inf],
	["C_Boat_Transport_02_F",2,25,2,GRLIB_perm_log],
	["AAF_Winter_Boat_Armed_01_minigun_F",5,30,5,GRLIB_perm_log],
	["AAF_Winter_SDV_01_F",5,30,5,GRLIB_perm_log],
	["C_Scooter_Transport_01_F",1,5,1,0],
	["C_SUV_01_F",1,10,3,0],
	["AAF_Winter_G_Offroad_01_F",1,10,5,0],
	["AAF_Winter_G_Offroad_01_armed_F",1,50,5,GRLIB_perm_inf],
	["C_Van_01_transport_F",1,15,7,0],
	["AAF_Winter_MRAP_03_F",2,25,12,0],
	["AAF_Winter_MRAP_03_hmg_F",5,100,12,GRLIB_perm_inf],
	["AAF_Winter_MRAP_03_gmg_F",5,125,12,GRLIB_perm_log],
	["AAF_Winter_Truck_02_transport_F",5,30,15,GRLIB_perm_log],
	["AAF_Winter_Truck_02_covered_F",5,30,15,GRLIB_perm_log],
	["AAF_Winter_LT_01_cannon_F",2,200,12,GRLIB_perm_log],
	["AAF_Winter_LT_01_AT_F",2,200,12,GRLIB_perm_tank],
	["AAF_Winter_LT_01_AA_F",2,200,12,GRLIB_perm_air],
	["AAF_Winter_LSV_01_unarmed_F",2,25,10,GRLIB_perm_inf],
	["AAF_Winter_LSV_01_armed_F",5,100,10,GRLIB_perm_log],
	["AAF_Winter_UGV_01_F",5,10,5,GRLIB_perm_inf],
	["AAF_Winter_UGV_01_rcws_F",5,250,5,GRLIB_perm_log]
];

heavy_vehicles = [
  	["AAF_Winter_E_APC_tracked_03_cannon_F",10,500,20,GRLIB_perm_log],
	["AAF_Winter_APC_Wheeled_03_cannon_F",10,500,20,GRLIB_perm_tank],
	["AAF_Winter_APC_tracked_03_cannon_F",10,500,20,GRLIB_perm_tank],
	["AAF_Winter_MBT_01_cannon_F",15,1000,25,GRLIB_perm_tank],
	["AAF_Winter_MBT_03_cannon_F",15,4000,25,GRLIB_perm_max],
	["AAF_Winter_Truck_02_MRL_F",15,3500,25,GRLIB_perm_max]
];

air_vehicles = [
	["AAF_Winter_UAV_01_F",1,10,5,GRLIB_perm_log],
	["AAF_Winter_UAV_06_F",1,30,5,GRLIB_perm_tank],
	["C_Plane_Civil_01_F",1,50,5,GRLIB_perm_air],	
	["AAF_Winter_Heli_light_03_unarmed_F",1,50,15,GRLIB_perm_tank],
	["AAF_Winter_Heli_light_03_F",1,150,15,GRLIB_perm_air],
	["AAF_Winter_Heli_Transport_02_F",1,150,15,GRLIB_perm_tank],	
	["AAF_Winter_Plane_Fighter_03_AA_F",20,3000,50,GRLIB_perm_max],
	["AAF_Winter_Plane_Fighter_03_CAS_F",20,3800,50,GRLIB_perm_max],
	["AAF_Winter_Plane_Fighter_04_F",20,4000,50,GRLIB_perm_max]
];

blufor_air = [
	"AAF_Winter_Plane_Fighter_03_CAS_F",
	"AAF_Winter_Heli_light_03_F",
	"AAF_Winter_Heli_light_03_F"];

static_vehicles = [
	["AAF_Winter_UGV_02_Demining_F",0,5,0,GRLIB_perm_inf],
	["AAF_Winter_Static_Designator_01_F",0,5,0,GRLIB_perm_inf],
	["AAF_Winter_HMG_01_F",0,10,0,GRLIB_perm_log],
	["AAF_Winter_HMG_01_high_F",0,10,0,GRLIB_perm_tank],
	["AAF_Winter_GMG_01_F",0,20,0,GRLIB_perm_log],
	["AAF_Winter_GMG_01_high_F",0,20,0,GRLIB_perm_tank],
	["AAF_Winter_static_AA_F",0,50,0,GRLIB_perm_air],
	["AAF_Winter_static_AT_F",0,50,0,GRLIB_perm_air],
	["AAF_Winter_Mortar_01_F",0,500,0,GRLIB_perm_max],
	["B_AAA_System_01_F",10,500,0,GRLIB_perm_max]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"B_AAA_System_01_F"
];

support_vehicles_west = [
	["AAF_Winter_Truck_02_box_F",5,125,5,GRLIB_perm_inf],
	["AAF_Winter_Truck_02_fuel_F",5,125,20,GRLIB_perm_inf],
	["AAF_Winter_Truck_02_ammo_F",5,125,5,GRLIB_perm_inf]
];

buildings_west = [
	["Land_Cargo_Tower_V2_F",0,0,0,GRLIB_perm_tank],
	["Land_Cargo_House_V2_F",0,0,0,GRLIB_perm_inf],
	["Land_Cargo_Patrol_V2_F",0,0,0,GRLIB_perm_log],
	["Flag_FIA_F",0,0,0,0]
];

blufor_squad_inf_light = [
	"AAF_Winter_Soldier_SL_F",
	"AAF_Winter_Soldier_medic_F",
	"AAF_Winter_Soldier_GL_F",
	"AAF_Winter_soldier_AR_F",
	"AAF_Winter_Soldier_lite_F",
	"AAF_Winter_Soldier_lite_F"
];
blufor_squad_inf = [
	"AAF_Winter_Soldier_SL_F",
	"AAF_Winter_Soldier_medic_F",
	"AAF_Winter_soldier_M_F",
	"AAF_Winter_Soldier_AR_F",
	"AAF_Winter_Soldier_F",
	"AAF_Winter_Soldier_lite_F"
];
blufor_squad_at = [
	"AAF_Winter_Soldier_SL_F",
	"AAF_Winter_Soldier_medic_F",
	"AAF_Winter_soldier_AT_F",
	"AAF_Winter_soldier_AT_F",
	"AAF_Winter_soldier_F",
	"AAF_Winter_soldier_F"
];
blufor_squad_aa = [
	"AAF_Winter_Soldier_SL_F",
	"AAF_Winter_Soldier_medic_F",
	"AAF_Winter_soldier_AA_F",
	"AAF_Winter_soldier_AA_F",
	"AAF_Winter_soldier_F",
	"AAF_Winter_soldier_F"
];
blufor_squad_mix = [
	"AAF_Winter_Soldier_SL_F",
	"AAF_Winter_Soldier_medic_F",
	"AAF_Winter_soldier_AA_F",
	"AAF_Winter_soldier_AT_F",
	"AAF_Winter_soldier_F",
	"AAF_Winter_soldier_F"
];

squads = [
	[blufor_squad_inf_light,10,300,0,GRLIB_perm_max],
	[blufor_squad_inf,20,400,0,GRLIB_perm_max],
	[blufor_squad_at,25,600,0,GRLIB_perm_max],
	[blufor_squad_aa,25,600,0,GRLIB_perm_max],
	[blufor_squad_mix,25,600,0,GRLIB_perm_max]
];

// All the UAVs must be declared here
uavs = [
	"AAF_Winter_UAV_06_F",
	"AAF_Winter_UAV_01_F",
	"AAF_Winter_UGV_01_F",
	"AAF_Winter_UGV_01_rcws_F"
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
  "AAF_Winter_Truck_02_ammo_F",
  "AAF_Winter_Truck_02_box_F"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	"AAF_Winter_Truck_02_medical_F"
];

vehicle_rearm_sources_west = [
	"AAF_Winter_Truck_02_ammo_F"
];

vehicle_big_units_west = [

];

GRLIB_vehicle_whitelist_west = [

];

GRLIB_vehicle_blacklist_west = [

];
