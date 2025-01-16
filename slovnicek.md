# Slovníček

## Proces

Proces je běžící program v paměti. Aplikace po spuštění začíná jako proces, ale může si spustit více podprocesů.

Každý běžící proces je jednoznačně identifikován svým PID (Process Identification Number), které zůstává stejné po celou dobu běhu procesu.

::: note
Poté, co proces skončí, může být PID, který mu patřil, recyklován pro jiný proces. To může někdy způsobit problémy, pokud si uživatel nebo jiný program uloží PID a později, když tento PID už nemusí být aktuální, s ním zkusí pracovat. (V takových případech by se měl použít jiný způsob identifikace procesu, například přes sdílený zamykací soubor apod.)
:::

Proces může mít jedno nebo více [vláken](#vlákno).

## Lightweight proces

Totéž co [vlákno](#vlákno), ale z pohledu jádra. Jádro vidí procesy i vlákna jako rovnocenné, vlákna se liší od procesů jen tím, že mezi sebou sdílejí paměť a většinu informací.

Číslo lightweight procesu (LWP) je totéž jako TID.

## Vlákno

(Thread) Jeden z potenciálně mnoha běžících proudů instrukcí v rámci [procesu](#proces). Vlákna jednoho procesu sdílejí stejný paměťový prostor (a tedy i programový kód procesu, globální proměnné a další objekty), ale ne registry a zásobník (a tedy mohou ve stejném okamžiku vykonávat jinou část programu).

Vlákna se typicky používají pro rozdělení dlouhé úlohy na části, které lze řešit paralelně. Na vícejádrovém procesoru nebo v multiprocesorovém systému mohou být vlákna vykonávána naprosto současně, každé na jiném jádře nebo i na jiném procesoru.

Každé vlákno má svůj číselný identifikátor (thread ID, TID). Každý proces začíná s jedním vláknem, jehož TID je rovné PID procesu, a vytváří nová vlákna dle potřeby.
