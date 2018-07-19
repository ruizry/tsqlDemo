CREATE DATABASE db_libr

USE db_libr

CREATE TABLE tbl_borrower (
	borrower_cardno INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	borrower_name VARCHAR(50) NOT NULL,
	borrower_address VARCHAR(50) NOT NULL,
	borrower_phonenum VARCHAR(50) NOT NULL
);

INSERT INTO tbl_borrower
	(borrower_name, borrower_address, borrower_phonenum)
	VALUES
	('Tashya Avila','P.O. Box 655, 3832 Proin Rd.','1-891-301-1485'),('Yen Madden','P.O. Box 870, 3499 Vel Rd.','1-193-757-6184'),('Bianca Carson','Ap #805-3412 Sodales Street','1-510-850-0183'),('Wayne England','440 Ultricies St.','1-678-601-4808'),('Christen Chambers','709-3967 Vulputate St.','1-668-434-2815'),('Farrah Decker','195-4466 Turpis Road','1-913-959-8613'),('Destiny Reilly','Ap #699-7784 Cum St.','1-868-701-9674'),('Sheila Acosta','P.O. Box 306, 1318 Lorem, Road','1-625-432-4609'),('Kaseem Hopper','667-3293 Nunc Ave','1-967-812-5873'),('Melissa Morrow','889-360 Eget Av.','1-513-589-9048'),('Casey Carney','9847 Nibh Street','1-233-744-1622'),('Nora Knox','594-6106 Luctus Street','1-542-765-0545'),('Leroy Raymond','5815 Fermentum Av.','1-543-218-7333'),('Richard Haley','Ap #909-6589 Malesuada Avenue','1-111-228-0229'),('Glenna Huff','P.O. Box 538, 809 Nec Ave','1-519-890-5799'),('Nehru Lopez','307-3193 Aliquam Av.','1-212-700-4800'),('Cole Shepard','346-9962 Tortor, Av.','1-782-129-7394'),('Finn Alford','Ap #360-8726 Blandit Road','1-892-722-6766'),('Lawrence Rose','Ap #159-8531 Magnis St.','1-574-784-3080'),('Tarik Olson','P.O. Box 199, 2393 Duis Rd.','1-847-704-4974'),('Jeremy Patton','P.O. Box 663, 4877 Magna. Ave','1-356-484-3633'),('Sharon Osborne','619-3025 Sit Avenue','1-218-699-2815'),('Amaya Cline','Ap #587-3538 Sed, St.','1-973-171-5783'),('Brendan Ayala','Ap #369-3110 Sem Road','1-996-440-3792'),('Amber Franklin','P.O. Box 119, 6877 Urna Rd.','1-879-963-0375'),('Sopoline Watkins','P.O. Box 483, 2715 Sed Rd.','1-200-505-0388'),('Travis Flores','2287 Bibendum St.','1-366-419-7453'),('Ulla Walter','168-8279 Aliquam Av.','1-639-416-6147'),('Leandra Walton','734-5905 Senectus Rd.','1-582-406-7634'),('Sloane Pennington','723-3867 Tincidunt, St.','1-953-651-6393')
;

CREATE TABLE tbl_publisher (
	publisher_name VARCHAR(50) PRIMARY KEY NOT NULL,
	publisher_address VARCHAR(50) NOT NULL,
	publisher_phonenum VARCHAR(50) NOT NULL
);

INSERT INTO tbl_publisher
	(publisher_name, publisher_address, publisher_phonenum)
	VALUES
	('Convallis','3706 Vivamus Rd.','1-273-168-2090'),('Picador','P.O. Box 449, 6652 Ut Av.','1-414-583-9587'),('Fringilla','P.O. Box 943, 2895 Ullamcorper St.','1-137-140-0598'),('Doubleday','Ap #476-6904 Lorem Ave','1-304-675-6045'),('Hendrerit','9351 Facilisis Street','1-220-818-1075'),('Quisque','446-3972 Molestie St.','1-713-386-2475'),('Magna','P.O. Box 666, 5511 Elit, Road','1-169-626-6745'),('Easystreet','P.O. Box 194, 8233 Velit St.','1-331-797-5387'),('Placerat','Ap #359-5048 Iaculis Ave','1-474-521-9784'),('Blondit','Ap #303-6667 Ante Rd.','1-672-344-5279'),('Luctus','2228 Orci Ave','1-756-994-7889'),('Signet Books','826 Quis St.','1-127-961-7444'),('Dupper','221-9307 Pharetra Av.','1-778-964-4991'),('Quam','531-3448 Nulla St.','1-947-465-1364'),('Porttitor','P.O. Box 310, 6741 Rutrum Ave','1-597-791-3182'),('Gravida','P.O. Box 960, 3216 Nunc. Rd.','1-883-498-8570'),('Nisi','Ap #541-3120 Et Road','1-388-338-5280'),('Neque','Ap #856-3373 Aliquet Ave','1-317-385-1079'),('Estudios','199-6195 At Rd.','1-677-567-1006'),('Parker','P.O. Box 917, 4060 Metus. Av.','1-561-765-2276')
;

CREATE TABLE tbl_book (
	book_bookid INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
	book_title VARCHAR(50) NOT NULL,
	book_publishername VARCHAR(50) NOT NULL CONSTRAINT fkey_publisher_id FOREIGN KEY REFERENCES tbl_publisher(publisher_name) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_book
	(book_title, book_publishername)
	VALUES
	('The Lost Tribe','Picador'),('The Shining','Doubleday'),('The Running Man','Signet Books'),('dui, nec','Hendrerit'),('convallis est,','Blondit'),('odio. Nam','Picador'),('ipsum non','Convallis'),('risus. Donec','Blondit'),('Proin sed','Convallis'),('urna. Ut','Quisque'),('interdum enim','Magna'),('dictum sapien.','Magna'),('ipsum. Phasellus','Quisque'),('porttitor scelerisque','Easystreet'),('neque. Nullam','Easystreet'),('montes, nascetur','Easystreet'),('suscipit nonummy.','Placerat'),('turpis nec','Placerat'),('at, nisi.','Placerat'),('et magnis','Placerat'),('erat. Sed','Placerat'),('felis orci,','Dupper'),('nunc sit','Luctus'),('magna. Ut','Luctus'),('nec tempus','Dupper'),('Proin mi.','Dupper'),('ipsum ac','Porttitor'),('tempor erat','Porttitor'),('tincidunt adipiscing.','Estudios'),('montes, nascetur','Estudios')
;

CREATE TABLE tbl_library_branch (
	branch_branchid INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	branch_name VARCHAR(50) NOT NULL,
	branch_address VARCHAR(50) NOT NULL
);

INSERT INTO tbl_library_branch
	(branch_name, branch_address)
	VALUES
	('Sharpstown','111 1st Ave'),('Central','222 2nd Ave'),('Downtown','333 3rd Ave'),('Middlebrook','444 4th Ave')
;

CREATE TABLE tbl_book_author (
	author_bookid INT PRIMARY KEY NOT NULL CONSTRAINT fkey_authorbook_id FOREIGN KEY REFERENCES tbl_book(book_bookid) ON UPDATE CASCADE ON DELETE CASCADE,
	author_name VARCHAR(50) NOT NULL
);

INSERT INTO tbl_book_author
	(author_bookid, author_name)
	VALUES
	(1000,'Mark Lee'),(1001,'Stephen King'),(1002,'Stephen King'),(1003,'Isaiah Stephenson'),(1004,'Fritz Crawford'),(1005,'Ciaran Osborn'),(1006,'Tad Solomon'),(1007,'Kenyon Ellison'),(1008,'Raja Rollins'),(1009,'Fulton Howell'),(1010,'Grady Steele'),(1011,'Amal Spencer'),(1012,'Bruce Vang'),(1013,'Merrill Mcbride'),(1014,'Haley Estes'),(1015,'Helen Watson'),(1016,'Martin Keller'),(1017,'Ella Stark'),(1018,'Vanna England'),(1019,'Perry Cook'),(1020,'Odessa Barr'),(1021,'Honorato Mcclain'),(1022,'Charlotte Allison'),(1023,'Deacon Shannon'),(1024,'Tashya Greene'),(1025,'Ivan Glass'),(1026,'Philip Reyes'),(1027,'Marah Duke'),(1028,'Jamalia Combs'),(1029,'Igor Dorsey')
;

CREATE TABLE tbl_book_copies (
	copies_bookid INT NOT NULL CONSTRAINT fkey_copiesbook_id FOREIGN KEY REFERENCES tbl_book(book_bookid) ON UPDATE CASCADE ON DELETE CASCADE,
	copies_branchid INT NOT NULL CONSTRAINT fkey_copiesbranch_id FOREIGN KEY REFERENCES tbl_library_branch(branch_branchid) ON UPDATE CASCADE ON DELETE CASCADE,
	copies_no_of_copies INT NOT NULL
);

INSERT INTO tbl_book_copies
	(copies_bookid, copies_branchid, copies_no_of_copies)
	VALUES
	(1000,100,2),(1000,101,9),(1000,102,9),(1000,103,9),(1001,100,9),(1001,101,9),(1001,102,9),(1001,103,9),(1002,100,9),(1002,101,9),(1002,102,9),(1002,103,9),(1003,103,5),(1004,103,7),(1005,101,9),(1006,100,8),(1007,103,3),(1008,100,6),(1009,100,3),(1010,102,5),(1011,103,4),(1012,102,3),(1013,103,10),(1014,102,5),(1015,101,6),(1016,102,3),(1017,102,3),(1018,102,4),(1019,103,6),(1020,100,5),(1021,102,5),(1022,102,6),(1023,100,8),(1023,101,8),(1024,102,3),(1025,103,3),(1026,100,8),(1027,101,3),(1028,101,3),(1028,100,4),(1029,100,4),(1029,102,8)
;

CREATE TABLE tbl_book_loans (
	loans_bookid INT NOT NULL CONSTRAINT fkey_loanbook_id FOREIGN KEY REFERENCES tbl_book(book_bookid) ON UPDATE CASCADE ON DELETE CASCADE,
	loans_branchid INT NOT NULL CONSTRAINT fkey_loanbranch_id FOREIGN KEY REFERENCES tbl_library_branch(branch_branchid) ON UPDATE CASCADE ON DELETE CASCADE,
	loans_cardno INT NOT NULL CONSTRAINT fkey_loancard_id FOREIGN KEY REFERENCES tbl_borrower(borrower_cardno) ON UPDATE CASCADE ON DELETE CASCADE,
	loans_dateout DATE NOT NULL,
	loans_duedate DATE NOT NULL
);

INSERT INTO tbl_book_loans
	(loans_bookid, loans_branchid, loans_cardno, loans_dateout, loans_duedate)
	VALUES
	(1029,100,3,'06-30-2018','05-05-2018'),(1022,100,3,'06-03-2018','07-20-2018'),(1029,103,3,'07-13-2018','07-19-2018'),(1019,102,3,'05-18-2018','07-04-2018'),(1022,101,3,'05-25-2018','05-17-2018'),(1019,100,3,'05-30-2018','05-06-2018'),(1021,103,1,'06-14-2018','05-23-2018'),(1008,100,1,'07-10-2018','07-18-2018'),(1010,103,1,'05-15-2018','05-27-2018'),(1001,101,1,'05-06-2018','05-14-2018'),(1009,103,1,'05-04-2018','06-21-2018'),(1006,102,1,'07-09-2018','05-22-2018'),(1013,103,23,'05-19-2018','05-09-2018'),(1002,102,30,'07-09-2018','05-02-2018'),(1013,100,30,'07-10-2018','07-18-2018'),(1008,102,2,'06-28-2018','06-22-2018'),(1004,102,21,'07-10-2018','06-08-2018'),(1011,101,25,'06-04-2018','06-16-2018'),(1013,100,28,'07-10-2018','07-19-2018'),(1014,102,24,'07-16-2018','06-27-2018'),(1022,102,24,'05-28-2018','07-06-2018'),(1003,103,4,'05-13-2018','05-18-2018'),(1025,100,5,'07-10-2018','07-20-2018'),(1010,103,8,'06-19-2018','07-17-2018'),(1005,103,9,'05-23-2018','06-26-2018'),(1020,103,10,'06-01-2018','05-09-2018'),(1001,100,13,'07-10-2018','07-19-2018'),(1021,101,14,'06-17-2018','07-18-2018'),(1019,101,12,'07-01-2018','05-25-2018'),(1006,102,17,'06-02-2018','06-26-2018'),(1016,102,16,'06-09-2018','06-07-2018'),(1005,103,19,'05-21-2018','05-01-2018'),(1028,102,19,'07-17-2018','06-03-2018'),(1012,102,9,'05-17-2018','05-28-2018'),(1013,103,8,'07-11-2018','06-11-2018'),(1012,101,8,'05-08-2018','06-13-2018'),(1017,102,4,'07-01-2018','06-15-2018'),(1011,103,10,'06-14-2018','06-16-2018'),(1004,100,30,'07-09-2018','06-28-2018'),(1005,101,30,'05-28-2018','05-30-2018'),(1007,103,22,'05-09-2018','05-12-2018'),(1018,100,26,'05-18-2018','06-24-2018'),(1024,100,21,'05-17-2018','05-19-2018'),(1024,100,20,'06-07-2018','07-09-2018'),(1008,100,1,'06-28-2018','05-06-2018'),(1000,103,1,'05-05-2018','06-30-2018'),(1007,103,3,'07-16-2018','06-11-2018'),(1004,102,3,'05-03-2018','06-09-2018'),(1029,102,3,'06-05-2018','05-13-2018'),(1022,103,3,'07-01-2018','05-21-2018')
;


/* How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */
SELECT
	a2.copies_no_of_copies
	FROM tbl_book a1
	INNER JOIN tbl_book_copies a2 ON a2.copies_bookid = a1.book_bookid
	INNER JOIN tbl_library_branch a3 ON a3.branch_branchid = a2.copies_branchid
	WHERE a1.book_title = 'The Lost Tribe' AND a3.branch_name = 'Sharpstown'
;

/* How many copies of the book titled "The Lost Tribe" are owned by each library branch? */
SELECT
	a3.branch_name, a2.copies_no_of_copies
	FROM tbl_book a1
	INNER JOIN tbl_book_copies a2 ON a2.copies_bookid = a1.book_bookid
	INNER JOIN tbl_library_branch a3 ON a3.branch_branchid = a2.copies_branchid
	WHERE a1.book_title = 'The Lost Tribe'
;

/* Retrieve the names of all borrowers who do not have any books checked out. */
SELECT
	tbl_borrower.borrower_name FROM tbl_borrower
	WHERE NOT EXISTS
	(SELECT *
	FROM tbl_book_loans
	WHERE tbl_book_loans.loans_cardno = tbl_borrower.borrower_cardno )
;

/* For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. */
SELECT
	a3.book_title, a4.borrower_name, a4.borrower_address
	FROM tbl_library_branch a1
	INNER JOIN tbl_book_loans a2 ON a2.loans_branchid = a1.branch_branchid
	INNER JOIN tbl_book a3 ON a3.book_bookid = a2.loans_bookid
	INNER JOIN tbl_borrower a4 ON a4.borrower_cardno = a2.loans_cardno
	WHERE a2.loans_duedate = CONVERT(VARCHAR(10),GETDATE(),110)
;

/* For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */
SELECT a1.branch_name, COUNT(a2.loans_bookid) AS books_out
	FROM tbl_library_branch a1
	INNER JOIN tbl_book_loans a2 ON a2.loans_branchid = a1.branch_branchid
	GROUP BY a1.branch_name
;

/* Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out. */
SELECT a1.borrower_name, COUNT(a2.loans_bookid) AS books_out, a1.borrower_address, a1.borrower_phonenum
	FROM tbl_borrower a1
	INNER JOIN tbl_book_loans a2 ON a2.loans_cardno = a1.borrower_cardno 
	GROUP BY a1.borrower_name, a1.borrower_address, a1.borrower_phonenum
	HAVING COUNT(a2.loans_bookid) >=5
;

/* For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".*/
SELECT
	a3.book_title, a2.copies_no_of_copies
	FROM tbl_library_branch a1
	INNER JOIN tbl_book_copies a2 ON a2.copies_branchid = a1.branch_branchid
	INNER JOIN tbl_book a3 ON a3.book_bookid = a2.copies_bookid
	INNER JOIN tbl_book_author a4 ON a4.author_bookid = a3.book_bookid
	WHERE a4.author_name = 'Stephen King' AND a1.branch_name = 'Central'
;