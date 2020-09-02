#challenge1

SELECT district_id,count(district_id) AS ac_freq FROM account
GROUP BY district_id
ORDER BY count(district_id) DESC
LIMIT 5;

#challenge2
SELECT account_id, order_id, count(distinct amount) AS diff,group_concat(distinct bank_to), group_concat(amount) FROM finance.order
WHERE (k_symbol="SIPO")
GROUP BY account_id
HAVING diff>1;

#challenge3
SELECT loan.account_id, account.district_id,loan.amount FROM finance.loan
INNER JOIN finance.account
ON finance.loan.account_id=finance.account.account_id
ORDER BY loan.amount DESC;

#challenge4
SELECT loan.account_id, account.district_id,sum(loan.amount) AS total_loan FROM finance.loan
INNER JOIN finance.account
ON finance.loan.account_id=finance.account.account_id
GROUP BY district_id
ORDER BY loan.amount DESC;
 
#challenge5
#average
SELECT loan.account_id, account.district_id,avg(loan.amount) AS avg_loan FROM finance.loan
INNER JOIN finance.account
ON finance.loan.account_id=finance.account.account_id
GROUP BY district_id
ORDER BY loan.amount DESC;

#median
SELECT loan.account_id, account.district_id,avg(loan.amount) AS avg_loan FROM finance.loan
INNER JOIN finance.account
ON finance.loan.account_id=finance.account.account_id
GROUP BY district_id
ORDER BY loan.amount DESC;
