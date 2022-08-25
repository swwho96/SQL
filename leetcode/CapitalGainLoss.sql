'''
Write an SQL query to report the Capital gain/loss for each stock.
The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.

1. Buy를 -price로 바꾸어 생각한다.
2. 각 종목 별 price를 합산하여 '"capital_gain_loss"'로출력한다.
'''

SELECT stock_name, sum(
CASE WHEN operation = 'Buy' THEN -price
ELSE price END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name