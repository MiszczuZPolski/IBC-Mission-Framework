//enable Arsenal check script
ARSENAL_CHECK = true;
publicVariable "ARSENAL_CHECK";
ARSENAL_CHECK_ID = [
"76561198138528880"
];
publicVariable "ARSENAL_CHECK_ID";

//lista ekwipunku oddziału
[] call ibc_fnc_tabMySquad;

if (!isDedicated) then {
	_id = ["featureCamera", {[_this] call ibc_fnc_arsenal;}] call CBA_fnc_addPlayerEventHandler;
};