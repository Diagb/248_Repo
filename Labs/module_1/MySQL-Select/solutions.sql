SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title_id, publishers.pub_name 
FROM authors a,titles,publishers,titleauthor
	INNER JOIN authors
	WHERE authors.au_id=titleauthor.au_id

