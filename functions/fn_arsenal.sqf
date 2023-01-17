/*
 * Name:	fn_arsenal
 * Date:	23/11/2021
 * Version: 2.0
 * Author: Fluffy
 *
 * Description:
 * Checks if player opened Arsenal camera
 *
 * Parameter(s):
 * _camera (STRING): type of camera returned by CBA event
 *
 * Returns:
 * True if player opened arsenal
 *
 * Example:
 */
 
params ["_camera"];
_uid = getPlayerUID player;
_zero_based_position = ARSENAL_CHECK_ID findIf {_x == _uid};
if (_zero_based_position == -1) then {
	//Arsenal
	if ((_camera#1 == "ace_arsenal" || _camera#1 == "arsenal") && ARSENAL_CHECK) then {
		format ["Gracz: %1 korzysta z Arsenału", name player] remoteExec ["systemChat", 0];
	};
	//Splendid Camera
	if ((_camera#1 == "splendid") && ARSENAL_CHECK) then {
		format ["Gracz: %1 korzysta z Kamery Obserwatora", name player] remoteExec ["systemChat", 0];
	};
	//Zeus
	if ((_camera#1 == "curator") && ARSENAL_CHECK) then {
		format ["Gracz: %1 korzysta z ZEUSA", name player] remoteExec ["systemChat", 0];
	};
};