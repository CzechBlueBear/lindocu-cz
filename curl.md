## curl

-------------------------- -----------------------------------------
curl _url_                 Stáhne soubor a zobrazí jeho "syrový" obsah na standardní výstup.
curl _url_ -o _soubor_     Stáhne soubor a uloží ho pod daným jménem.
curl _url_ -O              Stáhne soubor a uloží ho pod původním jménem.
-------------------------- -----------------------------------------

Stáhne z webu soubor (což může být webová stránka ve formátu HTML, ale i jakýkoli jiný soubor). **curl** neprovádí žádné zpracování daného souboru, jen jej stáhne.

::: note
**curl** je velmi mocný nástroj s řadou dalších schopností (například zvládá i řadu jiných protokolů kromě standardního webového) a plný popis je mimo možnosti tohoto dokumentu; použijte ``man curl``.
:::

### Volby

#### Práce s cookies

-------------------------------- ------------------------------------------
[-b, --cookie _soubor_]{.tt}     Na začátku operace načte všechny cookie z daného souboru a na žádost serveru je použije.
[-c, --cookie-jar _soubor_]{.tt} Na závěr operace uloží všechny cookie, které byly v tu chvíli známy, do daného souboru (pokud soubor už existuje, bude přepsán, nepřidává se do něj).
-------------------------------- ------------------------------------------

#### Práce s certifikáty

-------------------------------- ------------------------------------------
[--ca-native]{.tt}               Použije k autentizaci na webu stejný soubor certifikátů, jaké používá lokální systém a jeho prohlížeče.
[--cacert _soubor_]{.tt}         Použije k autentizaci certifikáty z daného souboru (namísto defaultních). Soubor musí být ve formátu PEM a může obsahovat několik certifikátů.
[--capath _složka_]{.tt}         Použije k autentizaci certifikáty z dané složky (namísto defaultních). Soubory ve složce musí být ve formátu PEM. Je možné uvést více složek oddělených dvojtečkou ":".
[--crlfile _soubor_]{.tt}        (Certificate Revocation List) Považuje certifikáty v daném souboru za neplatné. Soubor musí mít formát PEM.
[-k, --insecure]{.tt}            Ignoruje zabezpečení (včetně neplatných certifikátů).
-------------------------------- ------------------------------------------

#### Ostatní

-------------------------------- ------------------------------------------
[--compressed]{.tt}              Pokud to server umožňuje, použije se při transferu komprese.
-------------------------------- ------------------------------------------
