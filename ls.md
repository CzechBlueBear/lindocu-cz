## ls

---------------------------------- ---------------------------------------------------
[ls]{.tt}                          Vypíše seznam souborů v aktuální složce.
[ls _složka_]{.tt}                 Vypíše seznam souborů v zadané složce.
---------------------------------- ---------------------------------------------------

(LiSt). Zobrazí seznam souborů ve složce.
Ekvivalent příkazu ``dir`` ve Windows/DOSu.

### Volby

#### Výběr souborů

---------------------------------- ---------------------------------------------------
[-a, --all]{.tt}                   Vypíše všechny soubory, včetně těch, jejichž jméno začíná tečkou, a implicitních "." a ".."
---------------------------------- ---------------------------------------------------

#### Formát výpisu

---------------------------------- ---------------------------------------------------
[-1]{.tt}                          Vypíše jen jeden soubor na řádek (užitečné ve skriptech).
[-h]{.tt}                          (Human) Pokud se vypisují velikosti, vypíše je v lidských jednotkách (KB, MB, ...) a ne v bytech.
[-l]{.tt}                          (Long) Dlouhý (podrobný) formát výpisu: ukáže u souborů délku, vlastníka, čas poslední změny a přístupová oprávnění.
[-q]{.tt}                          (Quote) Nahradí netisknutelné znaky ve jménech souborů otazníkem.
---------------------------------- ---------------------------------------------------

#### Řazení souborů

---------------------------------- ---------------------------------------------------
[-t]{.tt}                          (Time) Zobrazí soubory setříděné podle času (poslední úpravy), nejnovější nejdříve.
[-S]{.tt}                          (Size) Zobrazí soubory setříděné podle velikosti, největší nejdříve.
[-v]{.tt}                          (Version) Zobrazí soubory setříděné abedecně s výjimkou těch, které obsahují sekvenci čísel (jako 1.2.34 atd.), ty se setřídí podle čísel ("jak by člověk čekal").
---------------------------------- ---------------------------------------------------
