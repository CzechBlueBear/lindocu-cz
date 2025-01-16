## cp

Kopíruje soubory.

--------------------------------------- -----------------------------------------
[cp _soubor_ _cíl_]{.tt}                Vytvoří kopii souboru pod daným jménem. Pokud je cílem složka, soubor je vložen do složky.
[cp _soubor1_ _soubor2_ ... _cíl_]{.tt} Zkopíruje všechny uvedené soubory do cílové složky.
--------------------------------------- -----------------------------------------

::: tip
Pokud chcete zdůraznit, že chcete vložit soubor do složky, napište za název složky lomítko. Tím se zajistí, že kdybyste nějakým omylem zadali místo složky jiný soubor (který by byl, jak víme, bez ptaní přepsán), kopírování se neprovede a ohlásí se chyba, protože název souboru lomítkem končit nemůže.
:::

::: note
Pokud uživatel nestanoví jinak, chová se **cp** tak, že otevře cílový soubor pro zápis (s odstraněním původního obsahu, pokud nějaký je) a pak zapíše nový obsah. To znamená, že při přepsání existujícího souboru není žádné časové okno, kdy by cílový soubor vůbec neexistoval, a některé vlastnosti cílového souboru, zejména vlastnictví a přístupová práva, zůstávají původní.
:::

### Volby

------------------------------------ -------------------------------------------
[-f, --force]{.tt}                   Pokud cílový soubor existuje, ale nedá se otevřít pro zápis, má se odstranit a nahradit novým.
[-i, --interactive]{.tt}             Pokud by měl být přepsán soubor, ptá se uživatele na potvrzení.
[-l, --link]{.tt}                    Místo kopírování vytváří tvrdé odkazy (hardlinky).
[-u]{.tt}                            (Update) Pokud cílové soubory existují, přepisují se jen tehdy, pokud jsou starší než nově kopírované soubory, jinak jsou ponechány.
[-p]{.tt}                            (Preserve) Kopíruje beze změn i přístupová oprávnění, majitele a časové známky (podle okolností to může vyžadovat práva administrátora).
[-r, --recursive]{.tt}               Kopíruje složky i s jejich obsahem včetně podsložek, jejich podsložek atd.
[--remove-destination]{.tt}          Pokud cílový soubor existuje, vždy ho odstraní (i když by bylo možné ho otevřít pro zápis) a vytvoří nový.
[-s, --symbolic-link]{.tt}           Místo kopírování vytváří symbolické odkazy (symlinky).
[-x, --one-file-system]{.tt}         Brání kopírování, pokud by bylo mezi dvěma různými fyzickými úložišti.
------------------------------------ -------------------------------------------
