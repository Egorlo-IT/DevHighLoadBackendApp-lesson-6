CREATE OR REPLACE FUNCTION get_news_detail(_id int) 
    RETURNS TABLE( 
    	id int, 
    	title varchar, 
    	description varchar, 
    	cover varchar,
    	categoryId int,
    	userId int,
    	createdAt timestamp,
    	updatedAt timestamp
    ) as
$BODY$   
    select n.id, n.title, n.description, n.cover, n."categoryId", n."userId", n."createdAt", n."updatedAt" from news n where n.id = _id;

$BODY$
      LANGUAGE sql;