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

# JAK DODAĆ I EDYTOWAĆ MUZYKĘ W MISJI

By muzyka działała w misji, potrzebne jest:
- Plik CfgMusic w formacie (.hpp)
- Muzyka, której chcesz użyć w formacie (.ogg)

1. Przede wszystkim najpierw trzeba dodać linijkę tekstu w pliku "description.ext"
Linijka powinna być dodana u góry pliku i powinna wyglądać tak:
#include "CfgMusic.hpp"
Powinno być pod wszystkimi pozostałymi "#include"

2. Do folderu z misją trzeba wrzucić Plik "CfgMusic.hpp"
Plik "CfgMusic.hpp" powinien zawierać poszczególną zawartość zależnie od ilości
utworów. Przykładowa zawartość pliku dla jednego utworu:
```
class CfgMusic
{
	sounds[] = {};
	class FirstTrack
	{
		name = "01";
		sound[] = {"music\01.ogg", db+10, 1.0};
	};
};
```
To jest przykład dla dwóch utworów
```
class CfgMusic
{
	sounds[] = {};
	class FirstTrack
	{
		name = "01";
		sound[] = {"music\01.ogg", db+10, 1.0};
	};
	class SecondTrack
	{
		name = "02";
		sound[] = {"music\02.ogg", db+10, 1.0};
	};
};
```
Jak widać z każdym dodanym utworem trzeba dodać każdy kolejny "class". Trzeba pamiętać by dobrze rozpoczynać
i kończyć nawiasami, inaczej skrypt nie zadziała, oraz w każdej kolejnej class trzeba zmienić cyfry na 
03, 04 itd. Tak samo nazwę class: "Thirdtrack" "Fourthtrack" "Fifthtrack"

3. Trzecim punktem jest stworzenie folderu w folderze misji. Folder musi nazywać się "music"

4. Ostatnim zadaniem jest wrzucenie pliku utworu do folderu "music". Plik utworu MUSI być w formacie (.ogg)
Zmiana formatu pliku muzycznego nie może wyglądać tak, że zmienia się końcówkę pliku jak w zdjęciach.
Zmiana formatu musi nastąpić poprzez internetowy konwerter np. z mp3 na ogg.
Przykładowy konwerter stosowany przeze mnie: https://convertio.co/pl/mp3-ogg/

5. Na koniec trzeba zmienić nazwy plików na cyfry, tak jak jest zawarte wyżej w skrypcie. Czyli pierwszy
utwór trzeba nazwać "01". Drugi utwór "02". Trzeci utwór "03". I tak dalej

6. Odpowiednio teraz jak nazwano utwory, tak się je będzie przywoływać już podczas misji

- 01 - Firsttrack
- 02 - Secondtrack
- 03 - Thirdtrack

!!! Żeby przywołać utwór podczas misji trzeba wykonać następujące rzeczy !!!

- Z poziomu Zeusa otworzyć: Moduły -> Narzędzia deweloperskie -> wykonaj kod
- Teraz trzeba zaznaczyć "globalnie" u dołu konsoli i wpisać: " playmusic "liczbatrack" "
- Po wciśnięciu enter powinna rozpocząć się muzyka
- Jeśli to nie nastąpiło, sprawdź jeszcze raz wszystkie punkty

Co jeśli nie chce się muzyki, a jest w folderze z misją?

1. Usunąć folder "music"
2. Usunąć plik "CfgMusic.hpp"
3. Usunąć linijkę tekstu:
#include "CfgMusic.hpp" 
która jest w pliku "description.ext"


