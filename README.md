# IBC Mission Framework
 Mission Framework for IBC clan
W obecnej chwili aby framework działał prawidłowo należy zmienić kilka rzeczy:
1. W description.ext należy ustawić poprawną nazwę misji oraz autora, np.
- author = "MiszczuZPolski";
- OnLoadName = "Operacja Test";
2. W init.sqf należy dodać steamID64 osób z dostępem do zeusa/arsenału (jeśli osób jest więcej niż jedna, wpisy odgradzamy przecinkiem). Jeśli chcemy wyłączyć "Anticheata" wartość ARSENAL_CHECK zmieniamy z true na false.
3. W initPlayerLocal możemy skonfigurować 3 zmienne:
- czas trwania intra,
- customowy tekst, np. "Zło dobrem zwyciężaj"
- miejsce rozgrywania misji, np. "Warszawa, Polska"
