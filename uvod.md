% Základy linuxové příkazové řádky

| Že ten černokněžník starý vytáh' jednou paty přece!
| A teď budou jeho čáry zase po mém roztáčet se.
| Jeho řeč i díla znám já doslova,
| Vždyť i ve mně síla divotvorcova!
| - J. W. Goethe, _Čarodějův učeň_

# Úvod

## Základní chování příkazů

Linux je primárně serverový systém a filozofie příkazů to odráží. Příkazy počítají s použitím v automatických skriptech, kde se není koho zeptat, a z toho vyplývá jejich chování:

* Mazání souborů je bez ptaní.
* Pokud nějaký soubor stojí v cestě kopírování nebo přesunu, je bez ptaní přepsán.
* Pokud soubor neexistuje a zapíše se do něj, je bez ptaní vytvořen.
* Při úspěšné operaci se nevypíše nic ("žádná zpráva dobrá zpráva").

Přesně řečeno, příkazy spuštěné z terminálu vykonává _shell_, aplikace, která poslouchá "na druhé straně" terminálu. Většina příkazů jsou ve skutečnosti malé aplikace. To však pro uživatele nemá velký význam.

### Volby u příkazů (přepínače)

Jako ve Windows, i v Linuxu mohou mít příkazy nejrůznější volby (_options_), také známé jako přepínače (_switches_), které mění chování příkazu.

V Linuxu začíná volba pomlčkou "-" (namísto windowsího lomítka), pokud jde o jednopísmennou volbu, nebo dvěma pomlčkami, pokud je název volby delší. Například tedy "-a", "-l", "-Z", "--version", "--help" jsou všechno platné volby.

::: note
Několik jednopísmenných voleb lze seskupit, například volby "-a", "-b" a "-z" lze zapsat jako "-abz".
:::

Izolovaná dvojitá pomlčka "--" má speciální význam: označuje konec voleb s tím, že jakýkoli další argument už se nemá brát jako volba, i kdyby tak vypadal. To je někdy třeba pro ujištění, že nějaký řetězec se vždy bude brát jako řetězec (například jméno souboru) a neovlivní chování příkazu.

### Návratová hodnota

Každý spuštěný příkaz (nebo i jakákoli aplikace, která je spuštěna z terminálu) po svém ukončení vrací shellu návratovou hodnotu (_exit code_), číselnou hodnotu, která je 0 při úspěšném ukončení, a nenulová při chybě nebo nějakém druhu alternativního výstupu. Shell umožňuje na základě této hodnoty dělat rozhodnutí a navazovat dalšími příkazy.

::: example
Pokud se chceme pouze přesvědčit, že poslední příkaz byl úspěšný, uděláme to příkazem

    echo $?

Tento příkaz vypíše návratovou hodnotu posledního vykonaného příkazu. (Je to proto, že příkaz ``echo`` vypisuje text, a v našem případě je textem pouze řetězec "$?", což je jméno proměnné shellu, kam se ukládá právě poslední návratová hodnota. Teď to zní dosti nepochopitelně, ale později to bude jasnější.)
:::

::: warning
Všimněme si, že _úspěch_ je indikován nulou. V shellu je nula představitelem hodnoty "ano" (pravda, _true_), zatímco hodnota "ne" (nepravda, _false_) je vyjádřena nenulovou hodnotou. Tedy obráceně, než to má prakticky každý programovací jazyk. Je to dáno tím, že nula jako návratová hodnota při úspěšném vykonání akce byla zavedena velmi dávno (dříve než UNIX) a pokus to změnit by byl extrémně náročný. Podobných věcí je víc. Obecně, kdykoli něco v IT vypadá nesmyslně, většinou lze v historii najít bod, kdy to smysl dávalo.
:::

# Reference
