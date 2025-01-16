## rm

------------------------------------- ---------------------------------------
[rm _soubor_]{.tt}                    Odstraní soubor.
[rm _soubor1_ _soubor2_ ...]{.tt}     Odstraní všechny zadané soubory.
------------------------------------- ---------------------------------------

(ReMove) Odstraní zadaný soubor. Implicitně neodstraňuje složky.

::: note
Přesněji řečeno, odstraní tvrdý link, který představuje jméno souboru. Pokud má soubor více jmen (více tvrdých linků), není fyzicky odstraněn, dokud nejsou odstraněny všechny linky.
:::

::: warning
Připomeňme si, že mazání souborů na Linuxu (jako na všech UNIXech) je prakticky nevratné. Obzvlášť destruktivní může být volba <tt>-r</tt> ve spojení s doplňováním jmen souborů, které dělá shell při znaku "\*".
:::

### Volby

-------------------------------------- -----------------------------------------
-d, --dir                              (Directories) Maže i složky, pokud jsou prázdné.
-f, --force                            Přeskakuje bez ptaní neexistující soubory, nikdy se neptá na potvrzení.
-i                                     (Interactive) Zobrazí dotaz před smazáním každého souboru.
--one-file-system                      Při rekurzivním mazání přeskočí složky, které jsou na jiných úložištích než počáteční.
-r, --recursive                        Maže složky včetně jejich obsahu i podsložek.
-------------------------------------- -----------------------------------------
