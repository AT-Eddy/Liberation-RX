if ( isServer ) then {
	params [ "_targetsector" ];

	private _grp1 = [_targetsector] spawn send_paratroopers;
	sleep 10;
	["lib_reinforcements", [markertext _targetsector]] remoteExec ["bis_fnc_shownotification", 0];

	private _grp2 = grpNull;
	if ( combat_readiness > 55 ) then {
		_grp2 = [_targetsector] spawn send_paratroopers;
		sleep 10;
	};
	GRLIB_A3W_Mission_MR = [_grp1, _grp2];
	publicVariable "GRLIB_A3W_Mission_MR";
};