-- First Create the Database
-- CREATE DATABASE bookmarks;
-- Then switch to it
-- \c bookmarks

-- Drop the table if it exists
drop table if exists bookmarks;

-- Create the table
create table bookmarks (
    id integer primary key generated by default as identity,
    title text not null,
    url varchar(2083) not null,
    description text,
    rating integer
);

-- Insert data
insert into bookmarks (title, url)
values 
    ('Title 1', 'https://www.hello.com'),
    ('Title Title', 'Webaddress'),
    ('Greetings', 'Another url'),
    ('10 is arbitrary', 'MyUrl'),
    ('Should I do 10 or just 9', 'losing steam'),
    ('Ok this is the end', 'bye');

-- Insert more data
insert into bookmarks (title, url, description, rating)
values
    ('4 Chair Turn', 'www.yeah.com', 'Incredible', 5),
    ('Best Bookmark', 'http', 'What is love?', 2),
    ('Random words are random', 'website', 'OkOkOk', 2.7);
    -- ^ gets cast to 3
