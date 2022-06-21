/*Select book titles with the author Suzanne Collins */
SELECT book.title
FROM book, author
WHERE book.aid = author.aid AND author.aName = 'Suzanne Collins';

/*Select users that have a fantasy book on their list */
SELECT DISTINCT users.uname
FROM users, book, read
WHERE users.userID = read.userID AND read.isbn = book.isbn AND book.genre = 'fantasy';

/*Select title and author name of books that are <250 pages or are young adult fiction
*/
SElECT book.title, author.aname
FROM book, author
WHERE book.aid = author.aid AND (numOfPages < 250 OR genre = 'young adult fiction');

/*Select title of books that user 1 owns */
SELECT book.title
FROM users, book, read
WHERE users.userID = read.userID AND read.isbn = book.isbn AND users.userID = 1 AND read.owned = 1;

/*Select authors of fiction books that were not written by Matt Haig */
SELECT author.aname
FROM book, author
WHERE (book.aid = author.aid AND genre = 'fiction') MINUS
(SELECT author.aname
FROM book, author
WHERE book.aid = author.aid AND author.aname = 'Matt Haig');

/*Select titles of books that user 2 has read */
SELECT book.title
FROM users, book, read
WHERE book.isbn = read.isbn AND users.userID = read.userID AND read.userID = 2 AND read.status = 'read';

/*Select the book title and author with the largest number of pages */
SELECT author.aname, book.title
FROM book, author
WHERE book.aid = author.aid AND numOfPages >= all (SELECT book.numOfPages
FROM book);

/*Select book title and isbn for books that user 3 has not read */
SELECT book.title, book.isbn
FROM book
MINUS
(SELECT book.title, book.isbn
FROM book, users, read
WHERE book.isbn = read.isbn AND read.userID = users.userID AND read.userID = 3 AND read.status = 'read');

/*Select start date and title of books that Anna Nardelli is currently reading */
SELECT read.startDate, book.title
FROM users, book, read
WHERE users.userID = read.userID AND book.isbn = read.isbn AND read.status = 'currently reading' AND uname = 'Anna Nardelli';

/*Select authors that wrote books with keyword classic */
SELECT DISTINCT book.title, author.aname
FROM book, keywords, author
WHERE book.isbn = keywords.isbn AND book.aid = author.aid AND keywords.key = 'classic';

