titleText ["","BLACK FADED", 1000];
[] call compileFinal preprocessFileLineNUmbers "build_info.sqf";
diag_log "--- Liberation RX by pSiKO ---";
diag_log format ["Build date: %1", GRLIB_build_date];
diag_log "--- Init start ---";

enableSaving [false, false];
disableMapIndicators [false,true,false,false];
setGroupIconsVisible [false,false];

[] call compileFinal preprocessFileLineNUmbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\classnames.sqf";
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

<<<<<<< HEAD
<<<<<<< HEAD
if (!GRLIB_ACE_enabled) then {[] execVM "R3F_LOG\init.sqf"};
<<<<<<< HEAD
if (GRLIB_revive != 0) then {[] execVM "addons\FAR\FAR_revive_init.sqf"};
=======
=======
if (!GRLIB_ACE_enabled) then {[] call compileFinal preprocessFileLineNumbers "R3F_LOG\init.sqf"};
>>>>>>> 91906a5c (save veh inv)
if (GRLIB_revive != 0) then {[] execVM "addons\FAR\FAR_init.sqf"};
>>>>>>> 0cf69991 (rename addon)
=======
>>>>>>> eaee8edb (init)
[] execVM "GREUH\scripts\GREUH_activate.sqf";
=======
>>>>>>> ad744a03 (init mission)
=======
=======
[] call compileFinal preprocessfilelinenumbers "scripts\shared\init_shared.sqf";
[] call compileFinal preprocessFileLineNUmbers "scripts\shared\init_sectors.sqf";
>>>>>>> eefcff68 (add radius / huron type to parameters)

waitUntil { sleep 1; !isNil "GRLIB_ACE_enabled" };
>>>>>>> 8fd700ef (public veh concept)
if (!GRLIB_ACE_enabled) then {[] execVM "R3F_LOG\init.sqf"};

if (isServer) then {
	lhd setpos getmarkerpos "base_chimera";
	lhd hideObject true;
	//{ deleteVehicle _x } foreach ( ( getmarkerpos "lhd" ) nearObjects 500 );
	{
		_x removeAllMPEventHandlers "MPKilled";
		_x addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
		_x setVariable ["GRLIB_vehicle_owner", "public", true];
	} foreach vehicles;

	[] execVM "scripts\server\init_server.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
	[] execVM "scripts\server\offloading\hc_manager.sqf";
};

if (!isDedicated && hasInterface) then {
	waitUntil { sleep 1; !isNil "GRLIB_init_server" };
	[] execVM "scripts\client\init_client.sqf";
	[] execVM "GREUH\scripts\GREUH_activate.sqf";
} else {
	setViewDistance 1600;
};

diag_log "--- Init stop ---";