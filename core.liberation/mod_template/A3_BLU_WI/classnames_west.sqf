// *** FRIENDLIES ***
GRLIB_side_friendly = WEST;

// NATO Winter Faction [by MALLINGA] - Mod

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "NATO_WINTER_HELI_TRANSPORT_HURON";  // comment to use value from lobby/server.cfg
FOB_typename = "Land_Cargo_HQ_V1_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "B_Truck_01_box_F" ;
Respawn_truck_typename = "NATO_WINTER_HEMTT_MEDICAL";
ammo_truck_typename = "NATO_WINTER_HEMTT_AMMO";
fuel_truck_typename = "NATO_WINTER_HEMTT_FUEL";
repair_truck_typename = "NATO_WINTER_HEMTT_REPAIR";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "NATO_WINTER_HELIPILOT";
crewman_classname = "NATO_WINTER_CREW";

chimera_vehicle_overide = [
  ["B_Heli_Light_01_F", "NATO_WINTER_HELI_LIGHT"],
  ["B_Heli_Transport_01_F", "NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK"]
];


// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units_west = [
	["Alsatian_Random_F",0,0,0,GRLIB_perm_max],
	["Fin_random_F",0,0,0,0],
	["NATO_WINTER_SOLDIER",1,0,0,0],
	["NATO_WINTER_SOLDIER_MEDIC",1,0,0,0],
	["NATO_WINTER_SOLDIER_ENGINEER",1,0,0,0],
	["NATO_WINTER_SOLDIER_GL",1,0,0,GRLIB_perm_inf],
	["NATO_WINTER_SOLDIER_M",1,0,0,GRLIB_perm_inf],
	["NATO_WINTER_SOLDIER_LAT",1,0,0,0],
	["NATO_WINTER_SOLDIER_SHARPSHOOTER",1,0,0,GRLIB_perm_inf],
	["NATO_WINTER_SOLDIER_HEAVYGUNNER",1,0,0,GRLIB_perm_inf],
	["NATO_WINTER_RECON",1,0,0,GRLIB_perm_log],
	["B_diver_F",1,0,0,GRLIB_perm_log],
	["NATO_WINTER_RECON_M",1,0,0,GRLIB_perm_log],
	["NATO_WINTER_SOLDIER_AA",1,0,0,GRLIB_perm_log],
	["NATO_WINTER_SOLDIER_AT",1,0,0,GRLIB_perm_log],
	["NATO_WINTER_SNIPER",1,0,0,GRLIB_perm_log],
	["NATO_WINTER_SOLDIER_PG",1,0,0,GRLIB_perm_log],
	[crewman_classname,1,0,0,GRLIB_perm_inf],
	[pilot_classname,1,0,0,GRLIB_perm_log]
];


light_vehicles = [
	["NATO_WINTER_QUADBIKE",1,5,1,0],
	["B_Boat_Transport_01_F",1,25,1,GRLIB_perm_inf],
	["C_Boat_Transport_02_F",2,25,2,GRLIB_perm_log],
	["B_Boat_Armed_01_minigun_F",5,30,5,GRLIB_perm_log],
	["B_SDV_01_F",5,30,5,GRLIB_perm_log],
	["C_Scooter_Transport_01_F",1,5,1,0],
	["SUV_01_base_black_F",1,10,1,0],
	["B_G_Offroad_01_F",1,10,5,0],
	["B_G_Offroad_01_armed_F",1,50,5,GRLIB_perm_inf],
	["C_SUV_01_F",1,10,3,GRLIB_perm_inf],
	["C_Van_01_transport_F",1,15,7,0],
	["NATO_WINTER_MRAP",2,25,12,0],
	["NATO_WINTER_MRAP_HMG",5,100,12,GRLIB_perm_inf],
	["NATO_WINTER_MRAP_GMG",5,125,12,GRLIB_perm_log],
	["NATO_WINTER_HEMTT_TRANSPORT",5,30,15,GRLIB_perm_log],
	["NATO_WINTER_HEMTT_COVERED",5,30,15,GRLIB_perm_tank],
	["NATO_WINTER_LSVU",2,25,10,GRLIB_perm_inf],
	["NATO_WINTER_LSV",5,100,10,GRLIB_perm_log],
	["NATO_WINTER_LSVAT",5,150,10,GRLIB_perm_log],

	["NATO_WINTER_UGV",5,10,5,GRLIB_perm_inf],
	["NATO_WINTER_UGV_RCWS",5,250,5,GRLIB_perm_tank]
];

heavy_vehicles = [
	["NATO_WINTER_APC",10,500,20,GRLIB_perm_log],
	["NATO_WINTER_AMV",10,500,20,GRLIB_perm_log],
	["NATO_WINTER_AA",10,500,20,GRLIB_perm_tank],
	["NATO_WINTER_AFV",15,1000,25,GRLIB_perm_tank],
	["NATO_WINTER_AFV_UP",15,1500,25,GRLIB_perm_air],
	["NATO_WINTER_MBT",15,2000,30,GRLIB_perm_max],
	["NATO_WINTER_MBT_TUSK",15,2500,30,GRLIB_perm_max],
	["NATO_WINTER_ARTY",20,3000,35,GRLIB_perm_max],
	["NATO_WINTER_MLRS",20,3500,35,GRLIB_perm_max]

];

air_vehicles = [
	["B_UAV_01_F",1,10,5,GRLIB_perm_log],
	["B_UAV_06_F",1,30,5,GRLIB_perm_tank],
	["B_UAV_02_dynamicLoadout_F",5,1000,5,GRLIB_perm_air],
	["B_T_UAV_03_dynamicLoadout_F",5,1500,10,GRLIB_perm_max],
	["B_UAV_05_F",5,2000,15,GRLIB_perm_max],
	["C_Plane_Civil_01_F",1,250,5,GRLIB_perm_air],
	["NATO_WINTER_HELI_LIGHT",1,350,15,GRLIB_perm_log],
	["NATO_WINTER_HELI_LIGHT_ARMED",10,7500,35,GRLIB_perm_tank],
	["NATO_WINTER_HELI_TRANSPORT_HURON_UNARMED",10,1500,35,GRLIB_perm_tank],
	["NATO_WINTER_HELI_TRANSPORT_HURON",10,1700,35,GRLIB_perm_air],
	["NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK",10,2000,35,GRLIB_perm_tank],
	["B_T_VTOL_01_infantry_F",10,1300,40,GRLIB_perm_air],
	["B_T_VTOL_01_vehicle_F",10,1400,40,GRLIB_perm_air],
	["B_T_VTOL_01_armed_F",20,2500,40,GRLIB_perm_max],
	["NATO_WINTER_HELI_ATTACK",10,2250,30,GRLIB_perm_air],
	["B_Plane_CAS_01_dynamicLoadout_F",20,3000,50,GRLIB_perm_max],
	["B_Plane_Fighter_01_F",20,4500,50,GRLIB_perm_max],
	["B_Plane_Fighter_01_Stealth_F",20,4500,50,GRLIB_perm_max]
];

blufor_air = [
	"NATO_WINTER_HELI_ATTACK",
	"B_Plane_CAS_01_F",
	"B_Plane_Fighter_01_F",
	"NATO_WINTER_HELI_ATTACK"
];

static_vehicles = [
	["NATO_WINTER_STATIC_HMG",0,10,0,GRLIB_perm_log],
	["NATO_WINTER_STATIC_HMG_HIGH",1,10,0,GRLIB_perm_tank],
	["NATO_WINTER_STATIC_GMG",0,20,0,GRLIB_perm_log],
	["NATO_WINTER_STATIC_GMG_HIGH",1,20,0,GRLIB_perm_tank],
	["NATO_WINTER_STATIC_AA",1,50,0,GRLIB_perm_air],
	["NATO_WINTER_STATIC_AT",1,50,0,GRLIB_perm_air],
	["NATO_WINTER_MORTAR",0,500,0,GRLIB_perm_max],
	["NATO_WINTER_SAM_SYSTEM_01_RESTRICTED",10,1500,0,GRLIB_perm_tank],
	["NATO_WINTER_SAM_SYSTEM_02_RESTRICTED",10,1500,0,GRLIB_perm_air],
	["NATO_WINTER_AAA_SYSTEM_01_RESTRICTED",10,1500,0,GRLIB_perm_max]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"NATO_WINTER_STATIC_HMG_HIGH",
	"NATO_WINTER_STATIC_GMG_HIGH",
	"NATO_WINTER_STATIC_AA",
	"NATO_WINTER_STATIC_AT",
	"B_SAM_System_01_F",
	"B_SAM_System_02_F",
	"B_AAA_System_01_F"
];

support_vehicles_west = [
	["B_G_Offroad_01_repair_F",5,150,5,GRLIB_perm_inf],
	["B_G_Van_01_fuel_F",5,130,40,GRLIB_perm_inf]
];

//buildings_west_overide = true;
buildings_west = [
	["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_tank],
	["Land_Cargo_House_V1_F",0,0,0,GRLIB_perm_inf],
	["Land_Cargo_Patrol_V1_F",0,0,0,GRLIB_perm_log],
	["Flag_NATO_F",0,0,0,0]
];

blufor_squad_inf_light = [
"NATO_WINTER_SOLDIER_SL",
"NATO_WINTER_SOLDIER_MEDIC",
"NATO_WINTER_SOLDIER",
"NATO_WINTER_SOLDIER_ENGINEER",
"NATO_WINTER_SOLDIER_HMG"
];
blufor_squad_inf = [
"NATO_WINTER_SOLDIER_SL",
"NATO_WINTER_SOLDIER_MEDIC",
"NATO_WINTER_SOLDIER",
"NATO_WINTER_SOLDIER_HMG",
"NATO_WINTER_SOLDIER_GL",
"NATO_WINTER_SOLDIER_HEAVYGUNNER"
];
blufor_squad_at = [
"NATO_WINTER_SOLDIER_SL",
"NATO_WINTER_SOLDIER_MEDIC",
"NATO_WINTER_SOLDIER",
"NATO_WINTER_SOLDIER_HMG",
"NATO_WINTER_SOLDIER_GL",
"NATO_WINTER_SOLDIER_AT",
"NATO_WINTER_SOLDIER_AT"
];

blufor_squad_aa = [
"NATO_WINTER_SOLDIER_SL",
"NATO_WINTER_SOLDIER_MEDIC",
"NATO_WINTER_SOLDIER",
"NATO_WINTER_SOLDIER_HMG",
"NATO_WINTER_SOLDIER_GL",
"NATO_WINTER_SOLDIER_AA",
"NATO_WINTER_SOLDIER_AA"
];

blufor_squad_mix = [
"NATO_WINTER_SOLDIER_SL",
"NATO_WINTER_SOLDIER_MEDIC",
"NATO_WINTER_SOLDIER",
"NATO_WINTER_SOLDIER_HMG",
"NATO_WINTER_SOLDIER_GL",
"NATO_WINTER_SOLDIER_AA",
"NATO_WINTER_SOLDIER_AT",
"NATO_WINTER_SOLDIER_M",
"NATO_WINTER_SOLDIER_HEAVYGUNNER"
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
	"B_UAV_01_F",
	"B_UAV_02_dynamicLoadout_F",
	"B_T_UAV_03_dynamicLoadout_F",
	"B_UAV_05_F",
	"B_UAV_06_F",
	"C_UAV_06_F",
	"B_UGV_01_F",
	"B_UGV_01_rcws_F",
	"B_UGV_02_Demining_F"
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
	repair_truck_typename,repair_sling_typename
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	Respawn_truck_typename,medic_sling_typename,mobile_respawn
];

vehicle_rearm_sources_west = [
	Arsenal_typename,ammo_truck_typename,ammo_sling_typename
];

vehicle_big_units_west = [
];

GRLIB_vehicle_whitelist_west = [
];

GRLIB_vehicle_blacklist_west = [
];
