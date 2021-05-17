INSERT INTO genre (uuid, genre_name)
VALUES ('dab28099-5b9b-4395-8381-367d521b8d29', 'Fiction');
INSERT INTO genre (uuid, genre_name)
VALUES ('315fc20d-a2cb-42df-bbfe-82cb76b883b2', 'History');
INSERT INTO genre (uuid, genre_name)
VALUES ('ca8acefa-00c1-49fa-a1cb-9706f6f51f3f', 'Non-Fiction');
INSERT INTO genre (uuid, genre_name)
VALUES ('af13aec0-17c3-4c16-9857-0f4226fea7c9', 'Ritual');

INSERT INTO user (uuid, first_name, last_nme, email_address, phone_number, txt_msg_ind, last_login_date,
                          active_ind, user_role, password)
VALUES ('7e6a2795-f2dd-4818-877d-28705edca4dc', 'Admin', 'Dude', 'mike@mikebryant.com', '(606) 272-2894', 'Y', null,
        'Y', 'ADMIN', 'test');
INSERT INTO user (uuid, first_name, last_nme, email_address, phone_number, txt_msg_ind, last_login_date,
                          active_ind, user_role, password)
VALUES ('cdaaf655-447f-44b9-86de-3ee90e19ba85', 'User', 'Guy', 'mike@millcreeksoftware', null, 'N', null, 'Y', 'USER',
        'test');

INSERT INTO author (uuid, first_name, last_name, birth_year, country)
VALUES ('7fa1acc8-9c42-4625-9f61-af40bc88b66d', null, 'Various', null, null);
INSERT INTO author (uuid, first_name, last_name, birth_year, country)
VALUES ('e0d68971-8b8d-4bbc-9def-aeb690b4cce8', 'Steve', 'Bowling', 1971, 'USA');
INSERT INTO author (uuid, first_name, last_name, birth_year, country)
VALUES ('f5904627-c2e9-47e8-8a36-1e0497fc6959', 'Mike', 'Bryant', 1970, 'France');
INSERT INTO author (uuid, first_name, last_name, birth_year, country)
VALUES ('fe31f02f-7aca-448e-8568-46491986608d', 'George', 'Turner', 1977, 'Sweden');

INSERT INTO book (uuid, title, sub_title, isbn, publisher, publish_year, available_for_removal_ind, synopsis, image_file, genre_uuid) VALUES ('43a2d7ea-a52b-4d76-8206-6d7747dc9058', 'Don''t Scratch There in Public', 'How to Cope With That Embarassing Rash', null, 'Amazon', 2015, 'Y', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl dolor, pulvinar eget ex id, pulvinar congue nunc. Curabitur vulputate imperdiet ligula id suscipit. Phasellus quis augue quis neque tempor molestie. In nec tellus ultricies, eleifend sapien vitae, maximus tellus. Aliquam consectetur, sem non pretium venenatis, elit lorem ultrices velit, et sagittis quam lorem in nibh. Donec in enim ultricies, elementum enim eu, posuere nunc. Aenean venenatis pulvinar gravida. Suspendisse faucibus et felis in tempor. Fusce vel velit dapibus, pulvinar nisi sit amet, consectetur mauris. Proin quis maximus orci, quis ultrices leo. Vestibulum consequat, dui eget elementum efficitur, dolor diam vehicula mi, quis ultrices augue sapien in massa. Sed efficitur ante massa, vitae dictum lectus lacinia ac. Duis in risus vitae lectus egestas varius eu non eros. Nunc justo felis, ornare ut consequat porta, facilisis at nulla.<br />Pellentesque posuere fermentum venenatis. Duis rhoncus euismod tellus, eget ullamcorper tellus luctus id. Pellentesque malesuada, purus nec convallis congue, leo neque ullamcorper ipsum, vitae convallis lorem augue eget velit. Mauris ornare euismod sapien. Aliquam bibendum ipsum at arcu vulputate, ut interdum felis fringilla. Etiam at lacus ut sem condimentum hendrerit a non turpis. Praesent vel velit eros. Ut neque dolor, consequat id est eu, cursus venenatis nibh. Nulla condimentum ullamcorper congue. Etiam vestibulum vestibulum posuere. Aliquam hendrerit erat vitae augue sodales ornare. In dignissim pellentesque vulputate. ', 'dont_scratch_there_in_public_cover.jpg', 'ca8acefa-00c1-49fa-a1cb-9706f6f51f3f');
INSERT INTO book (uuid, title, sub_title, isbn, publisher, publish_year, available_for_removal_ind, synopsis, image_file, genre_uuid) VALUES ('f014f0a7-16e4-4fff-bc7c-90cb9a6148bf', 'SHHHH!!!!', 'A Collection of Poems About Sex in Public Libraries', null, 'Harper Collins', 2021, 'Y', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat auctor lobortis. Donec sagittis, augue sit amet sagittis scelerisque, magna sapien fermentum erat, at posuere tellus massa ac tortor. Sed egestas neque sit amet augue consectetur, a tempus turpis tincidunt. Vestibulum vulputate semper libero, ac pharetra ante feugiat ut. Nulla eu elit enim. Morbi tempus mi mi, a tincidunt lacus vestibulum quis. Aenean euismod risus lectus, et imperdiet libero suscipit condimentum. Nam metus ipsum, aliquam convallis tempor eget, cursus in nisi. Aliquam quis semper nisi. Donec pretium libero vitae tellus lacinia mollis. Proin a tincidunt erat, non lobortis nunc. Ut eu fermentum est. Aenean viverra ullamcorper dui vitae commodo.<br />Nunc pulvinar fringilla nulla, sit amet tempor lectus ornare sit amet. Aenean euismod nulla eu ante condimentum luctus. Quisque tempor lectus non tortor elementum, non vulputate ex venenatis. Nam sem neque, euismod ac dapibus et, elementum sit amet mauris. Ut non facilisis quam. Aenean viverra est felis, ac efficitur est fringilla sed. Etiam a nisi mattis, sodales neque a, iaculis lacus. Donec massa eros, facilisis at sollicitudin sed, dictum vel sapien. Donec malesuada orci a elit ultrices, eu convallis lacus efficitur. Maecenas ut ligula sed nulla dignissim varius cursus sodales lorem. Curabitur eget purus sit amet libero tristique scelerisque. ', 'library_sex_cover.jpg', 'ca8acefa-00c1-49fa-a1cb-9706f6f51f3f');
INSERT INTO book (uuid, title, sub_title, isbn, publisher, publish_year, available_for_removal_ind, synopsis, image_file, genre_uuid) VALUES ('feb99214-3857-43e6-97a2-ee19a70d1053', 'Cults for Fun and Profit', 'How I made a million dollas by getting a million followas.', null, 'Simon & Schuster', 2007, 'Y', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse auctor dolor nec maximus blandit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent libero quam, aliquet vel odio vel, maximus pretium nisi. Nullam enim tellus, elementum et quam eu, lobortis luctus erat. Mauris eleifend ipsum id justo volutpat, ut semper risus posuere. Nulla facilisi. Integer hendrerit tellus ac arcu gravida dapibus. Nulla arcu libero, facilisis vitae lobortis eu, egestas mattis odio. Aenean cursus nibh lectus, in venenatis lacus vehicula ut. Fusce placerat ante nec sodales porttitor. Praesent mattis quam dignissim dictum hendrerit.<br />Duis luctus erat et congue malesuada. Pellentesque enim nisl, rutrum id dapibus sed, tempor efficitur orci. Praesent arcu arcu, tristique sed nisl non, tristique blandit erat. Nunc est diam, tempor nec suscipit ut, sodales quis mauris. Praesent sagittis velit in cursus tincidunt. Morbi facilisis augue eget elit laoreet, eu tristique enim sodales. Nulla vulputate, tellus in placerat hendrerit, risus sem posuere tortor, sed interdum dolor mauris sed justo. Nam nec est ante. Ut orci urna, mollis in sollicitudin ac, convallis ac tortor. ', 'cults_cover.jpg', 'ca8acefa-00c1-49fa-a1cb-9706f6f51f3f');


INSERT INTO book_author (uuid, book_uuid, author_uuid)
VALUES ('0021cdcf-c9a2-47b9-9789-d9937c922ad4', 'f014f0a7-16e4-4fff-bc7c-90cb9a6148bf',
        'e0d68971-8b8d-4bbc-9def-aeb690b4cce8');
INSERT INTO book_author (uuid, book_uuid, author_uuid)
VALUES ('81a99510-4907-4528-b359-7e0be5b07de6', 'feb99214-3857-43e6-97a2-ee19a70d1053',
        'fe31f02f-7aca-448e-8568-46491986608d');
INSERT INTO book_author (uuid, book_uuid, author_uuid)
VALUES ('d822fb49-e768-48d4-bbe2-d7694d44cb3a', '43a2d7ea-a52b-4d76-8206-6d7747dc9058',
        'f5904627-c2e9-47e8-8a36-1e0497fc6959');

