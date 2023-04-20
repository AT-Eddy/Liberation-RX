params [ "_targetpos" ];

private _spawnsector = ( [ sectors_airspawn , [ _targetpos ] , { (markerpos _x) distance _input0 }, "ASCEND"] call BIS_fnc_sortBy ) select 0;
private _para_group = createGroup [GRLIB_side_enemy, true];
private _pilot_group = createGroup [GRLIB_side_enemy, true];

private _newvehicle = [markerpos _spawnsector, selectRandom opfor_troup_transports_heli] call F_libSpawnVehicle;
(crew _newvehicle) joinSilent _pilot_group;

<<<<<<< HEAD
_newvehicle setVariable ["GRLIB_counter_TTL", round(time + 3600)];
{
	_x setVariable ["GRLIB_counter_TTL", round(time + 3600)];
} foreach (crew _newvehicle);
sleep 1;

private _cargo_seat_free = count (fullCrew [_newvehicle, "cargo", true] - fullCrew [_newvehicle, "cargo", false]);
if (_cargo_seat_free > 8) then {_cargo_seat_free = 8};
diag_log format ["Spawn (%1) ParaTroopers on sector %2 at %3", _cargo_seat_free, _spawnsector, time];

private _unitclass = [];
while { (count _unitclass) < _cargo_seat_free } do { _unitclass pushback opfor_paratrooper };
private _para_group_tmp = [markerpos _spawnsector, _unitclass, GRLIB_side_enemy, "para"] call F_libSpawnUnits;
{
	[_x] joinSilent _para_group;
	_x assignAsCargo _newvehicle;
	_x moveInCargo _newvehicle;
	_x setSkill 0.65;
	_x setSkill ["courage", 1];
	_x allowFleeing 0;
	_x setVariable ["GRLIB_counter_TTL", round(time + 3600)];
	_x setVariable ["GRLIB_mission_AI", true];
	sleep 0.1;
} foreach (units _para_group_tmp);


[_newvehicle, _targetpos, _pilot_group, _para_group] spawn {
	params [ "_newvehicle", "_targetpos", "_pilot_group", "_para_group"];
<<<<<<< HEAD
=======
	private _unitclass = [];
	while { (count _unitclass) < _cargo_seat_free } do { _unitclass pushback opfor_paratrooper };
	private _para_group_tmp = [markerpos _spawnsector, _unitclass, GRLIB_side_enemy, "infantry"] call F_libSpawnUnits;
	{
		[_x] joinSilent _para_group;
		_x assignAsCargo _newvehicle;
		_x moveInCargo _newvehicle;
		_x addBackpack "B_Parachute";
		_x setSkill 0.65;
		_x setSkill ["courage", 1];
		_x allowFleeing 0;
		_x setVariable ["GRLIB_counter_TTL", round(time + 3600)];
		_x setVariable ["GRLIB_mission_AI", true];
		sleep 0.1;
	} foreach (units _para_group_tmp);
>>>>>>> 99e6f595 (meet resistance)

=======
	private ["_waypoint"];
>>>>>>> 30b7c180 (1)
	while {(count (waypoints _pilot_group)) != 0} do {deleteWaypoint ((waypoints _pilot_group) select 0);};
	while {(count (waypoints _para_group)) != 0} do {deleteWaypoint ((waypoints _para_group) select 0);};
	sleep 1;

	_waypoint = _pilot_group addWaypoint [ _targetpos, 300];
	_waypoint setWaypointType "MOVE";
	_waypoint setWaypointSpeed "FULL";
	_waypoint setWaypointBehaviour "CARELESS";
	_waypoint setWaypointCombatMode "BLUE";
	_waypoint setWaypointCompletionRadius 20;
	_waypoint = _pilot_group addWaypoint [ _targetpos, 150];
	_waypoint setWaypointType "MOVE";
	_waypoint setWaypointCompletionRadius 20;
	_waypoint = _pilot_group addWaypoint [ _targetpos, 1];
	_waypoint setWaypointType "MOVE";
	_waypoint setWaypointCompletionRadius 20;

	waitUntil { sleep 1;
		!(alive _newvehicle) || (damage _newvehicle > 0.2 ) || (_newvehicle distance2D _targetpos < 300)
	};

	_newvehicle flyInHeight 200;
	{
		unassignVehicle _x;
		moveout _x;
		sleep 0.5;
	} foreach (units _para_group);

	while {(count (waypoints _pilot_group)) != 0} do {deleteWaypoint ((waypoints _pilot_group) select 0);};
	while {(count (waypoints _para_group)) != 0} do {deleteWaypoint ((waypoints _para_group) select 0);};
	sleep 0.2;

	_waypoint = _pilot_group addWaypoint [ _targetpos, 200];
	_waypoint setWaypointBehaviour "COMBAT";
	_waypoint setWaypointCombatMode "RED";
	_waypoint setWaypointType "SAD";
	_waypoint = _pilot_group addWaypoint [ _targetpos, 200];
	_waypoint setWaypointBehaviour "COMBAT";
	_waypoint setWaypointCombatMode "RED";
	_waypoint setWaypointType "SAD";
	_waypoint = _pilot_group addWaypoint [ _targetpos, 200];
	_waypoint setWaypointBehaviour "COMBAT";
	_waypoint setWaypointCombatMode "RED";
	_waypoint setWaypointType "SAD";
	_waypoint = _pilot_group addWaypoint [ _targetpos, 200];
	_waypoint setWaypointType "SAD";
	_waypoint = _pilot_group addWaypoint [ _targetpos, 200];
	_waypoint setWaypointType "CYCLE";

	_waypoint = _para_group addWaypoint [ _targetpos, 100];
	_waypoint setWaypointType "SAD";
	_waypoint = _para_group addWaypoint [ _targetpos, 100];
	_waypoint setWaypointType "SAD";
	_waypoint = _para_group addWaypoint [ _targetpos, 100];
	_waypoint setWaypointType "SAD";
	_waypoint = _para_group addWaypoint [ _targetpos, 100];
	_waypoint setWaypointType "SAD";
	_waypoint = _para_group addWaypoint [ _targetpos, 100];
	_waypoint setWaypointType "CYCLE";
};

<<<<<<< HEAD
=======
private _para_group = createGroup [GRLIB_side_enemy, true];
[_targetpos, _para_group] spawn _sendPara;
waituntil {sleep 3; count (units _para_group) > 0};
>>>>>>> 99e6f595 (meet resistance)
_para_group;
