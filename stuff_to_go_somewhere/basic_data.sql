insert into owner (name, surname, address, tel) values ('Agnieszka', 'Kowalska', 'Wroclaw ul. Rysia 13', 888888888);
insert into dog (owner_id, name, image_path, date_of_birth, sex, weight, breed) values (1, 'Azor', NULL, '2018-01-01', 'M', 8.5, NULL), (1, 'Kaja', NULL, '2018-01-01', 'F', 8.5, 'Greyhound');
insert into disease (name, treatment) values ('flu', '0.5mg some substance per 1kg twice a day');
insert into occurrence (dog_id, disease, entry_date) values (1, 'flu', '2022-01-01');
