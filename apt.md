## apt

----------------------------- -------------------------------------------------------------
[apt search _výraz_]{.tt}     Vyhledá balíčky s daným výrazem v názvu.
[apt install _balíček_]{.tt}  Nainstaluje balíček.
[apt show _balíček_]{.tt}     Zobrazí informace o nainstalovaném balíčku.
[apt remove _balíček_]{.tt}   Odinstaluje balíček.
[apt update]{.tt}             Stáhne nové seznamy balíčků a připraví upgrade.
[apt upgrade]{.tt}            Updatuje všechny nainstalované balíčky na nejnovější verze.
----------------------------- -------------------------------------------------------------

Primární správce softwarových balíčků pro distra založená na Debianu (Ubuntu, Mint a další).
Toto je nejzákladnější způsob, jak instalovat software. Balíčky jsou stahovány z repozitářů sestavovaných a kontrolovaných správci distra, takže (téměř) zaručují kompatibilitu s ostatními.

::: note
Na jiných distribucích než debianích se používají jiní správci balíčků s jinými repozitáři, ale jejich fungování je velmi podobné. Distra založená na SUSE nebo RedHatu (mimo jiné Fedora) používají správce jménem <term>rpm</term>. Distribuce Arch a příbuzné (např. Manjaro) používají <term>pacman</term>, atd.
:::

::: warning
Teoreticky je možné nainstalovat v jednom distru správce balíčků z jiného distra, ale nedělejte to, obvykle se tím systém zcela rozbije.
:::

Pokud je třeba nainstalovat balíček, který není v repozitářích, je možné použít nezávislý balíčkovací systém jako [flatpak](#flatpak) nebo [snap](#snap).
