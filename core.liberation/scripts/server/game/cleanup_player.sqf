params ["_unit", "_id", "_uid", "_name"];
if (_name in ["HC1","HC2","HC3" ]) exitWith {
	deleteMarker "fpsmarkerHC1";
	deleteMarker "fpsmarkerHC2";
	deleteMarker "fpsmarkerHC3";
	false;
};

if !(isNull _unit) then {
	diag_log format ["--- LRX Cleanup player %1 (%2)", name _unit, _uid];

	// Save Player Context
	[_unit, _uid] call save_context;

	// Remove Dog
	private _my_dog = _unit getVariable ["my_dog", nil];
	if (!isNil "_my_dog") then { deleteVehicle _my_dog };

	// Unlock Car too Far
	private _cleanveh = [vehicles, {
		_x getVariable ["GRLIB_vehicle_owner", ""] == _uid &&
		!([_x, "FOB", GRLIB_fob_range] call F_check_near)
	}] call BIS_fnc_conditionalSelect;

	{
		_x setVariable ["GRLIB_vehicle_owner", "", true];
		_x setVariable ["R3F_LOG_disabled", false, true];
		_x setVehicleLock "UNLOCKED";
	} forEach _cleanveh;

	// Untow vehicle near FOB
	private _towveh = [vehicles, {
		_x getVariable ["GRLIB_vehicle_owner", ""] == _uid &&
		!isNull (_x getVariable ["R3F_LOG_remorque", objNull]) &&
		([_x, "FOB", GRLIB_sector_size] call F_check_near)
	}] call BIS_fnc_conditionalSelect;

	{
		_towed = _x getVariable ["R3F_LOG_remorque", objNull];
		_towed setVariable ["R3F_LOG_est_transporte_par", objNull, true];
		_x setVariable ["R3F_LOG_remorque", objNull, true];
		detach _towed;
		_towed setVelocity [0, 0, 0.1];
	} forEach _towveh;

	// Remove Marker
	deletemarker format ["PAR_marker_%1", _name];

	// Remove Squad
	private _my_squad = _unit getVariable ["my_squad", nil];
	if (!isNil "_my_squad") then { {deleteVehicle _x} forEach units _my_squad };

	// Remove AI
	private _bros = allUnits select {(_x getVariable ["PAR_Grp_ID","0"]) == format["Bros_%1", _uid]};
	{ deleteVehicle _x } forEach _bros;

	// remove last grave box
	private _old_graves = _unit getVariable ["GRLIB_grave", []];
	if (count _old_graves > 0) then {
		{ deleteVehicle _x } forEach (attachedObjects (_old_graves select (count _old_graves)-1));
	};

	// Remove Taxi
	private _taxi = _unit getVariable ["GRLIB_taxi_called", nil];
	if (!isNil "_taxi") then {
		if (getMarkerColor "taxi_lz" != "") then {
			deleteVehicle (nearestObjects [markerPos "taxi_lz", [taxi_helipad_type], 50] select 0);
			deleteMarkerLocal "taxi_lz";
		};
		if (getMarkerColor "taxi_dz" != "") then {
			deleteVehicle (nearestObjects [markerPos "taxi_dz", [taxi_helipad_type], 50] select 0);
			deleteMarkerLocal "taxi_dz";
		};
		{ deletevehicle _x } forEach (crew _taxi);
		deleteVehicle _taxi;
	};

<<<<<<< HEAD
<<<<<<< HEAD
	// Remove Marker
	deletemarker format ["PAR_marker_%1", _name];

	// Remove Squad
	private _my_squad = _unit getVariable ["my_squad", nil];
	if (!isNil "_my_squad") then { {deleteVehicle _x} forEach units _my_squad };

	// Save Player Context
	private _score = 0; 
	{if ((_x select 0) == _uid) exitWith {_score = (_x select 1)}} forEach GRLIB_player_scores; 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	if (_score > 20) then { [_unit, _uid] call save_context };
=======
	if (_score > 20) then { [_unit] call save_context };
>>>>>>> df6a7d0c (context mp fix)
=======
	if (_score > 20) then { [_unit] call save_context };
>>>>>>> 2731dc1c (context call)
=======
	if (_score > 20) then { [_unit, _uid] call save_context };
>>>>>>> ac0805ff (fix first save context)

	// Remove AI
	private _bros = allUnits select {(_x getVariable ["PAR_Grp_ID","0"]) == format["Bros_%1", _uid]};
	{ deleteVehicle _x } forEach _bros;

	// Remove Grave Box
	private _grave_box = _unit getVariable ["GRLIB_grave_box", nil];
	if (!isNil "_grave_box") then { deleteVehicle _grave_box };

=======
>>>>>>> 04dab3c1 (auto untow + new GRLIB_ammo_truck_load)
=======
>>>>>>> 1e7c6bf8544b06f295ba289c00b1a91a80e63c04
	// Delete Body
	deleteVehicle _unit;

	private _text = format ["Bye bye %1, see you soon...", _name];
	[gamelogic, _text] remoteExec ["globalChat", -2];
};
