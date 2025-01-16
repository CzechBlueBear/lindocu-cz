## file

---------------------------------- ---------------------------------------------------
[file _soubor_]{.tt}               Identifikuje soubor.
[file _soubor1_ _soubor2_...]{.tt} Identifikuje postupně všechny zadané soubory.
---------------------------------- ---------------------------------------------------

Pokusí se identifikovat typ souboru podle jeho obsahu (nezávisle na jméně) a vypíše stručné informace (jaký typ byl zjištěn a základní metadata, např. u obrázku jeho velikost).

---------------------------------- ---------------------------------------------------
[-b, --brief]{.tt}                 Vypíše jen zjištěné údaje, vynechá název souboru.
[-i, --mime]{.tt}                  Místo "lidského" formátu výstupu použije výstup ve standardizovaném formátu MIME, například u textového souboru v angličtině vypíše "text/plain; charset=us-ascii" namísto "ASCII text".
[-s, --special-files]{.tt}         Povoluje nahlížení do speciálních souborů (to umožňuje například identifikovat způsob naformátování partitiony apod.) Bez této volby se vypíše jen typ speciálního souboru, ale k jeho obsahu se nepřistupuje.
[-z, --uncompress]{.tt}            Povoluje nahlížení do zkomprimovaných souborů (pro dekompresi se použije externí utilita). Bez této volby se vypíše jen informace o druhu komprese, ale k obsahu se nepřistupuje.
---------------------------------- ---------------------------------------------------
