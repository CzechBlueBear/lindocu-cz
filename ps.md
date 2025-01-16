## ps

Zobrazí seznam právě běžících procesů. Defaultně ukazuje ty procesy, které běží z aktuálního terminálu.

### Volby

--------------------------------- ----------------------------------------------------
[-e, -A]{.tt}                     (Everything, All) Zobrazí všechny běžící procesy v celém systému.
[-f]{.tt}                         (Full) Zobrazí detailnější informace o každém procesu (defaultně: UID, PID, PID rodiče, využití CPU, čas spuštění, terminál, spotřebovaný čas CPU, příkazová řádka)
[-F]{.tt}                         (Extra Full) Ještě detailnější formát výpisu (jako ``-f`` a navíc velikost v paměti, RSS a číslo CPU, kde proces naposledy běžel).
[-H]{.tt}                         (Hierarchy) Zobrazí názvy procesů odsazené podle úrovně v hierarchii rodič-potomek.
[--forest]{.tt}                   Zobrazí procesy jako strom, tzn. jako -H, ale s čárkami označujícími hierarchii.
[-L]{.tt}                         (Lightweight) Zobrazí navíc vlákna, a to jako [lightweight procesy](#lightweight_proces), a přidá do výstupu políčko LWP (číslo lightweight procesu) a NLWP (počet lightweight procesů).
--------------------------------- ----------------------------------------------------
