Toy project to practice docker

Plan:
1) set up sql database schemas
2) Put some data in
3) Make a simple flask app to:
   a) Get the user data and their dogs (user on top, dogs below). 20 users per page?
   b) Get the doga data and their conditions and how to treat them
4) put the app to a docker, get the postgres docker and make it all runnable (docker compose?)
5) make adjustments on how database works, for example: setting up the password etc
6) docker secrets to have environemtn variables safe
   

Notatki:

sudo docker start zaczyna kontener
sudo docker exec -it nazwa_kontenera bashowa_komenda
bashowa_komenda np. psql -U user -P password (-W zeby haslo sie podawalo potem btw) nazwa_bazy


kopiowanie plikow do container (np. sqlka):

docker cp ./localfile.sql containername:container/path/file.sql
np. sudo docker cp create_schemas.sql postgres_local:/docker-entrypoint-initdb.d/create_schemas.sql
(np. docker cp ./dump.sql pg_test:/docker-entrypoint-initdb.d/dump.sql)


docker exec -u postgresuser containtername psql dbname postgresuser -f /container/path/file.sql By: felipe pereira, code_monk
np. sudo docker exec -it postgres_local psql -U admin -f docker-entrypoint-initdb.d/create_schemas.sql
(np. docker exec -u postgres pg_test psql postgres postgres -f docker0entrypoint-initdb.d/dump.sql)



DROPOWANIE TABLIC:
przy create_table bez if not exists wywala error. To chya znaczy ze nie usunal, bo jakby usunal to by dal warning chyba? zdrugiej strony normalnie przyjmowal roznice jak fine tunowale, idk moze to nie byly takie co zmienialy relacji.
Bo jak chce dropowac recznie to mi mowi ze nie moze bo sa relacjie siabadaba, kurwa no to usuwa czy nie bo w takim wypadku nie moglby se pierdolnac i zmienic schematu chyba ze jest inteligentny i jak nie zmieniaja sie kolumny bedace w relacji to te pozostale sobie zmienia. Idk, wez sie wywiedz



POSTGRES CZYTANIE TABLIC:
co sie odkurwa, zczytalem * from dog i pokazalo tylko dane. zrobilem kilka query na information_schema.columns where table_name = dog, potem robie znowu select * i nagle pokazuje nazwy kolumn. Czemu wczesniej nie pokazal xdd
