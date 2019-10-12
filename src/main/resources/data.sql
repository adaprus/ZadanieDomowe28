
INSERT INTO Category (id, name, description, image)
VALUES (1, 'MEAT_DISH', 'Znajdziesz tu mnóstwo sprawdzonych przepisów na dania z mięsa i dania z drobiu, zarówno na imprezę, jak i domowy obiad. Sprawdź nasze przepisy ...', 'http://www.przepisy.net/img/przepis/47174/sznycle-grzybowe_61857_11.jpg'),
        (2, 'DESSERTS', 'Przepisy na różne desery - owocowe, lodowe, na ciepło i zimno, mleczne, zapiekane i wiele innych', 'https://www.oetker.pl/dr-oetker-cms/oetker.pl/image/recipe-sernik-na-zimno-truskawkowy-z-motylkami.jpg'),
        (3, 'SOUPS', 'Najlepsze przepisy na zupy zebrane w jednym miejscu. Wystarczy wejść i wybrać zupę na każdy dzień roku', 'https://inspirowanesmakiem.pl/wp-content/uploads/2019/02/zupa-krem-930x530.jpg'),
        (4, 'VEGETARIAN', 'Dania wegetariańskie to pyszne i zdrowe rozwiązanie dla tych, którzy nie jadają mięsa. Poznaj dziesiątki przepisów na pyszne dania bez mięsa!', 'https://s3.przepisy.pl/przepisy3ii/img/variants/767x0/vegetarian-rice-dish_side847307.jpg');

ALTER TABLE Recipe MODIFY description VARCHAR(2000);
INSERT INTO Recipe(id, likes, name, description, category_id)
VALUES (1, 10, 'Zupa krem z dyni', 'Dynię obieramy, usuwamy pestki, kroimy na kawałki. Marchew, cebulę i czosnek obieramy i kroimy na mniejsze części. Wszystkie składniki przekładamy do garnka z grubym dnem, dodajemy oliwę z oliwek i podsmażamy, stale mieszając przez mniej więcej 3 minuty. Warzywa zalewamy bulionem i gotujemy pod przykryciem około 30 minut. Po tym czasie warzywa powinny być miękkie. Całość rozdrabniamy blenderem, aż zupa nabierze konsystencji kremu. Przyprawiamy solą i pieprzem do smaku.', 3),
        (2, 4, 'Zupa krem z pomidorów', 'W garnku rozgrzać oliwę, włożyć pokrojoną w kostkę cebulę oraz przepołowione ząbki czosnku. Smażyć co chwilę mieszając aż cebula się zeszkli, przez około 5 minut. Dodać papryczkę chili jeśli jej używamy oraz obrane i pokrojone na cienkie plasterki marchewki i pietruszkę. Smażyć przez 5 minut co chwilę mieszając.
Pomidory sparzyć, obrać ze skórki, usunąć szypułki. Pokroić na ćwiartki i usunąć gniazda nasienne. Pozostały miąższ pomidorów pokroić w kosteczkę, sok zachować. Pomidory i sok dodać do garnka z warzywami. Smażyć przez 1 minutę.
Wlać gorący bulion, zagotować na większym ogniu, następnie doprawić solą, świeżo zmielonym pieprzem, cukrem i suszonym oregano. Gotować przez około 13 - 15 minut, do czasu aż warzywa będą miękkie. Zupę zmiksować w blenderze dodając liście bazylii (część zostawić do podania), przelać z powrotem do garnka.
Do miseczki wlać śmietankę i stopniowo wlewać kilka łyżek zupy mieszając, przelać wszystko do garnka i wymieszać. Zupę podgrzać przed podaniem.', 3),
        (3, 6, 'Brownie', 'Piekarnik nagrzać do 160 stopni C. Przygotować małą prostokątną foremkę o wymiarach 21 cm x 28 cm. Posmarować ją tłuszczem i wyłożyć papierem do pieczenia.
Masło włożyć do rondelka i na minimalnym ogniu roztopić. Dodać 2 gorzkie czekolady (200 g) połamane na kosteczki i cały czas mieszając roztopić, odstawić z ognia.
W oddzielnej misce rozmiksować lub wymieszać rózgą jajka z cukrem. Dodać do nich roztopioną czekoladę z masłem i zmiksować lub wymieszać rózgą na gładką masę.
Dodać mąkę, sól oraz wanilię i grubo posiekane orzechy jeśli ich używamy, zmiksować na jednolite ciasto. Wyłożyć do przygotowanej blaszki, wyrównać powierzchnię.
Resztę czekolady (100 g) zetrzeć na tarce lub posiekać w kosteczkę i posypać po wierzchu ciasta.
Wstawić do piekarnika i piec przez ok. 35 minut, aż ciasto lekko urośnie. Po upieczeniu i ostudzeniu pokroić na małe kawałeczki.', 2),
        (4, 3, 'Panna cotta', 'Żelatynę zalać 2 łyżkami zimnej wody i odstawić na 5 minut. Laskę wanilii przekroić wzdłuż na pół i łyżeczką wyskrobać ziarenka.
Do rondelka wlać śmietankę kremową i mleko, dodać cukier, ziarenka wanilii wraz z przepołowioną laską lub ekstrakt z wanilii. Mieszając podgrzewać aż cukier się rozpuści.
Następnie doprowadzić prawie do zagotowania, tzn. odstawić z ognia w momencie gdy przy brzegach garnka zacznie się gotować.
Dodać rum i wino oraz namoczoną żelatynę, mieszać przez około minutę, aż cała żelatyna się rozpuści.
Mieszankę wlać do 4 filiżanek (każda po 125 ml) lub 6 mniejszych naczynek. Odstawić do wystudzenia. Po ostudzeniu filiżanki przykryć kawałkiem folii i wstawić do lodówki do stężenia, na około 4 - 5 godzin, lub najlepiej na całą noc.
Wyłożyć na talerzyk i podawać ze świeżymi owocami lub musem owocowym. Można też skropić syropem klonowym, posypać orzechami lub czekoladą.', 2),
        (5, 11, 'Szybki gulasz z filetu indyka z kurkami', 'Filet pokroić w kostkę ok. 1,5 cm. Doprawić solą, pieprzem i obtoczyć w 1 łyżce mąki pszennej.
Kurki wypłukać w misce z wodą, odcedzić i osuszyć. Pokroić na kawałki.
W szerokim większym garnku na 1 łyżce oliwy poddusić pokrojoną w kosteczkę cebulę, następnie dodać pokrojonego w kosteczkę pora, a po chwili podsmażania dodać obraną i startą na tarce marchewkę. Często mieszając podsmażać przez ok. 2 minuty.
Przesunąć warzywa na brzeg garnka, wlać pozostałe 1/2 łyżki oliwy, dodać przygotowanego indyka i obsmażać przez ok. 5 minut, w międzyczasie co chwilę zamieszać.
Doprawić solą i pieprzem. Wlać bulion i zagotować. W międzyczasie dodać kurki. Gotować pod przykryciem przez ok. 10 minut (polędwiczki) lub nieco dłużej (filety), do miękkości mięsa.
Zdjąć pokrywę, dodać śmietankę i koperek, wymieszać i gotować jeszcze bez przykrycia przez ok. 5 minut co chwilę mieszając. Na koniec dodać przez sitko mąkę ziemniaczaną, wymieszać i pogotować chwilę do zagęszczenia sosu. Można dodać dla koloru kurkumę.', 1),
        (6, 8, 'Filety drobiowe w lekkim sosie koperkowym', 'Sznycle rozbić tłuczkiem na filety o grubości ok. 1 cm. Doprawić delikatnie solą oraz pieprzem, następnie obtoczyć w mące pszennej.
Rozgrzać patelnię z 2 łyżkami oliwy. Obsmażyć filety z każdej strony, odłożyć na talerz.
Na tę samą patelnię włożyć posiekanego pora i obraną oraz startą na tarce marchewkę. Dodać łyżeczkę masła i mieszając poddusić przez ok. 3 minuty.
Wlać bulion i zagotować. Dodać podsmażone filety i zanurzyć je w sosie. Przykryć pokrywą i gotować przez ok. 15 minut, w międzyczasie raz poprzewracać mięso.
Pod koniec dodać koperek. Można dodać 2 łyżki śmietanki, ale nie jest to konieczne.', 1),
        (7, 5, 'Sałatka z mango i awokado', 'Umytą i osuszoną rukolę ułożyć w salaterkach. Dodać obrane i pokrojone w kostkę mango, awokado oraz ser.
Dodać połamane orzechy włoskie i wyłuskane ziarna granatu. Wymieszać składniki sosu, doprawić odrobiną soli i świeżo zmielonym pieprzem. Polać po sałatce i podawać.', 4),
        (8, 9, 'Medialony warzywne', 'Na gotującą się wodę włożyć połówkę brokuła (różyczkami ku górze). Gotować przez ok. 3 minuty, wyjąć i pokroić na małe kawałki, przestudzić.
Pora przekroić wzdłuż na 4 części, opłukać, osuszyć, następnie posiekać. Włożyć na patelnię z oliwą i dusić przez ok. 5 minut do miękkości, co chwilę mieszając. Zdjąć na talerz i przestudzić.
Ugotowane i obrane ziemniaki pokroić w kostkę. Piekarnik nagrzać do 180 stopni C.
W misce roztrzepać jajka z dodatkiem śmietanki lub mleka, soli, pieprzu i oregano. Dodać mąkę pszenną i ziemniaczaną i wymieszać dokładnie rózgą.
Połączyć za pomocą łyżki z koperkiem lub szczypiorkiem, pokrojonym w kosteczkę serem oraz przygotowanymi składnikami: brokułem, porem i ziemniakami.
8 żaroodpornych kokilkek (lub 8 wgłębień w formie do muffinów lub 8 foremek silikonowych) natłuścić oliwą lub masłem, napełnić masą i wstawić do piekarnika. Piec przez ok. 20 min', 4);