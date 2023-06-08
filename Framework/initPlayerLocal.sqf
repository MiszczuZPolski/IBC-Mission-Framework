/*
 *	Author: D.Anderson
 *	Description:
 *		Executed locally when player joins mission (includes both mission start and JIP).
 *	Parametr(s):
 *		0 - _unit: Object
 *		1 - _didJIP: Boolean
 */
params ["_unit", "_didJIP"];

waitUntil{!isNull _unit};

if (!_didJIP) then {
	[
		_unit, 													/* nawet nie próbuj dotykać */
		13,														/* czas trwania skryptu (odliczania) */
		"logo512.paa", 											/* ścieżka do loga w intro - też nie dotykaj */
		"8 lipca 1940 roku",									/* wasz tekst, nie musi to być data */
		"Wyspa Halsoy"											/* miejsce rozgrywania misji */
	] execVM "functions\fn_introDialog.sqf";
};