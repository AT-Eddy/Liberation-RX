if (!isServer && hasInterface) exitWith {};
params [ "_truck_to_unload" ];
private [ "_next_box", "_next_pos", "_offset", "_all_objects" ];

waitUntil {sleep 0.1; isNil "GRLIB_load_box"};
GRLIB_load_box = true;

_offset = 0;
{
	if ( _x select 0 == typeof _truck_to_unload ) then { _offset = _x select 1; };
} foreach box_transport_config;

_truck_to_unload allowDamage false;
_truck_to_unload enableSimulationGlobal false;
_all_objects = _truck_to_unload getVariable ["GRLIB_ammo_truck_load", []];

{ 
	_x enableSimulationGlobal false;
	_x disableCollisionWith _truck_to_unload;
	_x allowDamage false;
} foreach _all_objects;
sleep 0.5;

{
	_next_box = _x;
	if (!isNull _next_box) then {
		detach _next_box;
		waitUntil {sleep 1; isNull (attachedTo _x)};

		_next_pos = [getPosATL _truck_to_unload, _offset, getdir _truck_to_unload] call BIS_fnc_relPos;
		_next_box setPosATL (_next_pos vectorAdd [0, 0, 0.2]);
		_next_box setdir (getdir _truck_to_unload);
		_next_box setVelocity [ 0,0,0 ];
		_offset = _offset - 2.2;
		[format [localize "STR_BOX_UNLOADED", [typeOf _next_box] call F_getLRXName]] remoteExec ["hintSilent", owner _truck_to_unload];
	};
} foreach _all_objects;

sleep 2;
{ 
	_x enableSimulationGlobal true;
	_x enableCollisionWith _truck_to_unload;
	_x allowDamage true;
	_x setVariable ["R3F_LOG_disabled", false, true];
} foreach _all_objects + _truck_to_unload;
_truck_to_unload setVariable ["GRLIB_ammo_truck_load", [], true];

sleep 1;
GRLIB_load_box = nil;
