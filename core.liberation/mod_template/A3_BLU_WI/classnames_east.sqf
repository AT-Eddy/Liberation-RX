// *** BADDIES ***
GRLIB_side_enemy = WEST;

// All class MUST be defined !

opfor_sentry = "NATO_WINTER_SOLDIER_LITE";
opfor_rifleman = "NATO_WINTER_SOLDIER";
opfor_grenadier = "NATO_WINTER_SOLDIER_GL";
opfor_squad_leader = "NATO_WINTER_SOLDIER_SL";
opfor_team_leader = "NATO_WINTER_SOLDIER_TL";
opfor_marksman = "NATO_WINTER_SOLDIER_M";
opfor_machinegunner = "NATO_WINTER_SOLDIER_AR";
opfor_heavygunner = "NATO_WINTER_SOLDIER_HEAVYGUNNER";
opfor_medic = "NATO_WINTER_SOLDIER_MEDIC";
opfor_rpg = "NATO_WINTER_SOLDIER_LAT";
opfor_at = "NATO_WINTER_SOLDIER_AT";
opfor_aa = "NATO_WINTER_SOLDIER_AA";
opfor_officer = "NATO_WINTER_OFFICER";
opfor_sharpshooter = "NATO_WINTER_SOLDIER_SHARPSHOOTER";
opfor_sniper = "NATO_WINTER_SNIPER";
opfor_spotter = "NATO_WINTER_SPOTTER";
opfor_engineer = "NATO_WINTER_SOLDIER_ENGINEER";
opfor_paratrooper = "NATO_WINTER_SOLDIER_PG";
opfor_mrap = "NATO_WINTER_MRAP";
opfor_mrap_hmg = "NATO_WINTER_MRAP_HMG";
opfor_mrap_gmg = "NATO_WINTER_MRAP_GMG";
opfor_transport_helo = "NATO_WINTER_HELI_TRANSPORT_HURON";
opfor_transport_truck = "NATO_WINTER_HEMTT_COVERED";
opfor_fuel_truck = "NATO_WINTER_HEMTT_FUEL";
opfor_ammo_truck = "NATO_WINTER_HEMTT_AMMO";
opfor_fuel_container = "B_Slingload_01_Fuel_F";
opfor_ammo_container = "B_Slingload_01_Ammo_F";
opfor_flag = "Flag_NATO_F";
opfor_house = "Land_Cargo_House_V1_F";
opfor_patrol = "Land_Cargo_Patrol_V1_F";
opfor_hq = "Land_Cargo_HQ_V1_F";

// used as first defenders of sector
militia_squad = [
"NATO_WINTER_RECON_TL",
"NATO_WINTER_RECON_LAT",
"NATO_WINTER_RECON",
"NATO_WINTER_RECON_M",
"NATO_WINTER_RECON_MEDIC",
"NATO_WINTER_RECON_JTAC",
"NATO_WINTER_SNIPER",
"NATO_WINTER_SOLDIER_HEAVYGUNNER",
"NATO_WINTER_SOLDIER_ENGINEER",
"NATO_WINTER_SOLDIER_LAT2",
"NATO_WINTER_SOLDIER_HMG",
"NATO_WINTER_SOLDIER_MORT",
"NATO_WINTER_SOLDIER_REPAIR",
"NATO_WINTER_SOLDIER_HEAVYGUNNER",
"NATO_WINTER_SOLDIER_GL"
];

divers_squad = [
	"B_diver_TL_F",
	"B_diver_TL_F",
	"B_diver_exp_F",
	"B_diver_exp_F",
	"B_diver_exp_F",
	"B_diver_exp_F",
	"B_diver_F",
	"B_diver_F",
	"B_diver_F",
	"B_diver_F",
	"B_diver_F",
	"B_diver_F"
];

militia_vehicles = [
	"B_G_Offroad_01_armed_F",
	"B_G_Offroad_01_armed_F",
	"NATO_WINTER_LSV",
	"NATO_WINTER_LSVAT",
	"NATO_WINTER_MRAP_HMG"
];

opfor_boats = [
	"B_Boat_Armed_01_minigun_F",
	"B_T_Boat_Armed_01_minigun_F"
];

// used when an Opfor sector is attacked
opfor_vehicles = [
	"NATO_WINTER_AFV",
	"NATO_WINTER_CRV",
	"NATO_WINTER_AMV",
	"NATO_WINTER_APC",
	"NATO_WINTER_MBT",
	"NATO_WINTER_MBT",
	"NATO_WINTER_AA",
	"NATO_WINTER_ARTY",
	"NATO_WINTER_MRAP_GMG",
	"NATO_WINTER_MRAP_HMG",
	"NATO_WINTER_MRAP_GMG",
	"NATO_WINTER_MRAP_HMG",
	"NATO_WINTER_MBT_TUSK",
	"NATO_WINTER_AA",
	"NATO_WINTER_LSV",
	"NATO_WINTER_LSVAT"

];

opfor_vehicles_low_intensity = [
	"NATO_WINTER_APC",
	"NATO_WINTER_AFV",
	"NATO_WINTER_MRAP_GMG",
	"NATO_WINTER_MRAP_HMG",
	"NATO_WINTER_LSV",
	"NATO_WINTER_LSVAT"
];

// used when battlegroup is called
opfor_battlegroup_vehicles = [
	"NATO_WINTER_APC",
	"NATO_WINTER_AFV",
	"NATO_WINTER_ARTY",
	"NATO_WINTER_MRAP_GMG",
	"NATO_WINTER_MRAP_HMG",
	"NATO_WINTER_MBT",
	"NATO_WINTER_MBT_TUSK",
	"NATO_WINTER_AA",
	"NATO_WINTER_HELI_LIGHT_ARMED",
	"NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK",
	"NATO_WINTER_HELI_TRANSPORT_HURON",
	"NATO_WINTER_HEMTT_COVERED"
];

opfor_battlegroup_vehicles_low_intensity = [
	"NATO_WINTER_APC",
	"NATO_WINTER_CRV",
	"NATO_WINTER_MRAP_GMG",
	"NATO_WINTER_MRAP_HMG",
	"NATO_WINTER_HELI_TRANSPORT_HURON",
	"NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK",
	"NATO_WINTER_HEMTT_TRANSPORT",
	"NATO_WINTER_LSV",
	"NATO_WINTER_LSVAT"
];

// used by opfor_battlegroup as transport
opfor_troup_transports_truck = [
	"NATO_WINTER_HEMTT_TRANSPORT",
	"NATO_WINTER_HEMTT_COVERED"
];

opfor_troup_transports_heli = [
	"NATO_WINTER_HELI_LIGHT",
	"NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK",
	"NATO_WINTER_HELI_TRANSPORT_HURON"
];

// used by battlegroup air attack
opfor_air = [
	"NATO_WINTER_HELI_LIGHT_ARMED",
	"NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK",
	"NATO_WINTER_HELI_ATTACK",
	"B_Plane_CAS_01_F",
	"B_Plane_Fighter_01_F"
];

opfor_statics = [
	"NATO_WINTER_STATIC_GMG_HIGH",
	"NATO_WINTER_STATIC_HMG_HIGH",
	"NATO_WINTER_STATIC_AA",
	"NATO_WINTER_STATIC_AT",
	"NATO_WINTER_MORTAR"
];


opfor_recyclable = [

	["B_HMG_01_high_F",0,round (20 / GRLIB_recycling_percentage),0],
	["B_GMG_01_high_F",0,round (40 / GRLIB_recycling_percentage),0],
	["B_static_AA_F",0,round (80 / GRLIB_recycling_percentage),0],
	["B_static_AT_F",0,round (80 / GRLIB_recycling_percentage),0],
	["B_Mortar_01_F",0,round (300 / GRLIB_recycling_percentage),0],
	["NATO_WINTER_STATIC_GMG_HIGH",0,round (30 / GRLIB_recycling_percentage),0],
	["NATO_WINTER_STATIC_HMG_HIGH",0,round (30 / GRLIB_recycling_percentage),0],
	["NATO_WINTER_STATIC_AA",0,round (80 / GRLIB_recycling_percentage),0],
	["NATO_WINTER_STATIC_AT",0,round (80 / GRLIB_recycling_percentage),0],
	["NATO_WINTER_MORTAR",0,round (250 / GRLIB_recycling_percentage),0],
	["B_T_LSV_01_armed_F",1,round (20 / GRLIB_recycling_percentage),2],
	["B_T_LSV_01_AT_F",1,round (40 / GRLIB_recycling_percentage),2],
	["NATO_WINTER_LSV",1,round (30 / GRLIB_recycling_percentage),2],
	["NATO_WINTER_LSVAT",1,round (40 / GRLIB_recycling_percentage),2],
	["B_G_Offroad_01_armed_F",1,round (30 / GRLIB_recycling_percentage),2],
	["B_G_Offroad_01_AT_F",1,round (40 / GRLIB_recycling_percentage),2],
	["B_Truck_01_transport_F",5,round (20 / GRLIB_recycling_percentage),5],
	["B_Truck_01_covered_F",5,round (20 / GRLIB_recycling_percentage),5],
	["NATO_WINTER_HEMTT_TRANSPORT",5,round (20 / GRLIB_recycling_percentage),3],
	["NATO_WINTER_HEMTT_COVERED",5,round (20 / GRLIB_recycling_percentage),3],
	["NATO_WINTER_HEMTT_FUEL",5,round (50 / GRLIB_recycling_percentage),5],
	["NATO_WINTER_HEMTT_AMMO",5,round (50 / GRLIB_recycling_percentage),5],
	["B_MRAP_01_hmg_F",5,round (50 / GRLIB_recycling_percentage),3],
	["B_MRAP_01_gmg_F",5,round (50 / GRLIB_recycling_percentage),3],
	["NATO_WINTER_MRAP",0,round (40 / GRLIB_recycling_percentage),3],
	["NATO_WINTER_MRAP_GMG",0,round (50 / GRLIB_recycling_percentage),3],
	["NATO_WINTER_MRAP_HMG",0,round (50 / GRLIB_recycling_percentage),3],
	["B_T_Boat_Armed_01_minigun_F",2,round (100 / GRLIB_recycling_percentage),2],
	["B_APC_Tracked_01_rcws_F",10,round (150 / GRLIB_recycling_percentage),10],
	["B_APC_Wheeled_01_cannon_F",10,round (200 / GRLIB_recycling_percentage),10],
	["B_APC_Tracked_01_AA_F",10,round (300 / GRLIB_recycling_percentage),10],
	["B_MBT_01_cannon_F",15,round (400 / GRLIB_recycling_percentage),15],
	["B_MBT_01_TUSK_F",15,round (500 / GRLIB_recycling_percentage),15],
	["NATO_WINTER_AFV",10,round (250 / GRLIB_recycling_percentage),10],
	["NATO_WINTER_CRV",10,round (250 / GRLIB_recycling_percentage),10],
	["NATO_WINTER_AMV",10,round (250 / GRLIB_recycling_percentage),10],
	["NATO_WINTER_APC",10,round (250 / GRLIB_recycling_percentage),10],
	["NATO_WINTER_ARTY",12,round (400 / GRLIB_recycling_percentage),12],
	["NATO_WINTER_AA",12,round (400 / GRLIB_recycling_percentage),12],
	["NATO_WINTER_MBT",15,round (500 / GRLIB_recycling_percentage),15],
	["NATO_WINTER_MBT_TUSK",15,round (500 / GRLIB_recycling_percentage),15],
	["B_AFV_Wheeled_01_cannon_F",15,round (1500 / GRLIB_recycling_percentage),15],
	["B_AFV_Wheeled_01_up_cannon_F",15,round (1500 / GRLIB_recycling_percentage),15],
	["B_MBT_01_arty_F",15,round (2500 / GRLIB_recycling_percentage),20],
	["B_Heli_Light_01_F",10,round (50 / GRLIB_recycling_percentage),18],
	["B_Heli_Light_01_armed_F",10,round (150 / GRLIB_recycling_percentage),20],
	["B_Heli_Transport_01_F",10,round (100 / GRLIB_recycling_percentage),20],
	["B_Heli_Transport_03_F",10,round (200 / GRLIB_recycling_percentage),20],
	["NATO_WINTER_HELI_LIGHT",10,round (150 / GRLIB_recycling_percentage),20],
	["NATO_WINTER_HELI_LIGHT_ARMED",10,round (150 / GRLIB_recycling_percentage),20],
	["NATO_WINTER_HELI_TRANSPORT_GHOSTHAWK",10,round (200 / GRLIB_recycling_percentage),20],
	["NATO_WINTER_HELI_ATTACK",10,round (200 / GRLIB_recycling_percentage),20],
	["NATO_WINTER_HELI_TRANSPORT_HURON",10,round (100 / GRLIB_recycling_percentage),20],
	["NATO_WINTER_HELI_TRANSPORT_HURON_UNARMED",10,round (100 / GRLIB_recycling_percentage),20],
	["B_CTRG_Heli_Transport_01_sand_F",10,round (200 / GRLIB_recycling_percentage),20],
	["B_Heli_Attack_01_F",10,round (600 / GRLIB_recycling_percentage),20],
	["B_T_VTOL_01_infantry_F",10,round (1500 / GRLIB_recycling_percentage),25],
	["B_T_VTOL_01_vehicle_F",10,round (1500 / GRLIB_recycling_percentage),25],
	["B_T_VTOL_01_armed_F",10,round (1500 / GRLIB_recycling_percentage),25],
	["B_Plane_CAS_01_dynamicLoadout_F",20,round (1000 / GRLIB_recycling_percentage),30],
	["B_Plane_CAS_01_F",20,round (1500 / GRLIB_recycling_percentage),30],
	["B_Plane_Fighter_01_F",20,round (2000 / GRLIB_recycling_percentage),30]
];
