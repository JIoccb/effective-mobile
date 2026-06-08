SELECT a.client_id
FROM account AS a
LEFT JOIN transaction AS t
    ON t.account_id = a.id
   AND t.type = 'BUY'
   AND t.transaction_date >= CURRENT_DATE - INTERVAL '1 month'
GROUP BY a.client_id
HAVING COALESCE(SUM(t.amount), 0) < 5000;