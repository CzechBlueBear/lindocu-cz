## touch

[touch _soubor_]{.tt}

Nastaví časové značky u souboru na současné, jako by byl soubor upraven.

Pokud soubor neexistuje, je vytvořen prázdný. (Toto se používá často ve skriptech, kde se takový soubor používá jako značka, že něco je v běhu nebo že daný adresář se k něčemu používá).

### Volby

--------------------------------------- -----------------------------------------------
[-a]{.tt}                               (Access) Změní jen čas posledního přístupu a nechá ostatní časové značky nezměněné.
[-c, --no-create]{.tt}                  Nevytváří nový soubor.
[-m]{.tt}                               (Modification) Změní jen čas poslední změny a nechá ostatní časové značky nezměněné.
--------------------------------------- -----------------------------------------------
