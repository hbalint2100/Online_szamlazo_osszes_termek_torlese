# NAV Online számlázó összes termék törlése

Összefoglalás:
  A szamlazo.nav.gov.hu-n található számlázóba képtelenek voltak az importálás és exportálás funkciók mellé egy 'teljes termék lista törlése' funkciót rakni, ezért kénytelen voltam írni egy powershell scriptet, amivel ez megvalósitható.
  
Használata:
  Töltsd le a projektet, jelentkezz be a számlázó programba Chrome-al kattints a termékek fülre, ezután hozz létre egy új 'teszt' terméket, amit ki fogsz törölni.
Ezután a chrome-ban nyitsd meg a more tools -> developer tools(fejlesztői eszközök) fült, itt a network-ot kiválasztva lehet elkezdeni monitorozni a hálózati kéréseket. 
Ezt kihasználva a weboldalon töröld az előbb létrehozott terméket. Ekkor a törlés során két hálózati kérés történik, az egyik egy hosszú azonosító ez a DELETE request, és egy query nevű POST request. 
A hálózati kérésekre jobb kattintással feltünik egy menü, ahol a 'copy->copy as PowerShell' funkciót választva a vágolapra tudjuk másolni a kérés PowerShell -beli parancsát, a DELETE request-et másold illesztd be a delete.txt-be, a POST requestet, pedig a command.txt-be. Ha ez megvan lefuttathatod a scriptet (fontos, hogy ugyanabban a mappában legyen, ahol a két txt) és már le is törlödtek a termékek, ha nem sikerült mindet, futtasd le többször.
