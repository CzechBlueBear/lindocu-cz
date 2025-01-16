## cat

-------------------------------- ----------------------------------------------
[cat soubor]{.tt}                Zobrazí obsah souboru na terminál.
[cat soubor1 soubor2 ...]{.tt}   Zobrazí soubory jeden po druhém.
-------------------------------- ----------------------------------------------

(CATalog, CATenate) Vypíše celý obsah souboru ("catalog"). Pokud je zadáno několik souborů, vypíše postupně obsah všech bez oddělení ("catenate").

Z pohledu systému se **cat** chová tak, že čte soubor byte po bytu a kopíruje jej na svůj standardní výstup, kterým je terminál, ale také může být připojen k souboru nebo může posílat data do dalšího příkazu. To se často používá ve skriptech pro kopírování a spojování souborů (ale **cat** není primárně kopírovací nástroj, tím je [cp](#cp)).

::: example
Spojení dvou souborů s výstupem do třetího souboru:

    cat soubor1 soubor2 >soubor3

**cat** sám o sobě neprovádí žádné úpravy v proudu dat (pokud není použita některá z voleb níže), takže tento postup může být použit i pro soubory obsahující netextová data.
:::

::: warning
Vypsáním obsahu souboru, který není textový, na terminál můžete terminál zablokovat, protože soubor může náhodně obsahovat řídící kódy, které přepnou terminál do nějakého divného režimu. Pro prohlížení souborů je lepší použít utilitu [less](#less) (**cat** je určen spíše pro skripty).
:::

### Volby

-------------------------------- -----------------------------------------------------------------
[-E, --show-ends]{.tt}           Vypíše "$" na konci každé řádky (užitečné ve skriptech).
[-n, --number]{.tt}              Očísluje výstupní řádky.
[-s, --squeeze-blank]{.tt}       Zredukuje série prázdných řádek vždy na jednu.
[-v, --show-nonprinting]{.tt}    Nahradí netisknutelné znaky sekvencemi ``M-x`` a ``^-x``.
-------------------------------- -----------------------------------------------------------------

::: example

    cat /proc/version

Zobrazí obsah souboru ``/proc/version``, který vždy obsahuje verzi aktuálně běžícího linuxového jádra.
:::
