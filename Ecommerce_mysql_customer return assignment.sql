USE ecomm;
CREATE TABLE customer_returns (
    ReturnID INT PRIMARY KEY,
    CustomerID INT,
    ReturnDate DATE,
    RefundAmount DECIMAL(10,2)
);

INSERT INTO customer_returns
(ReturnID, CustomerID, ReturnDate, RefundAmount)
VALUES
(1001, 50022, '2023-01-01', 2130),
(1002, 50316, '2023-01-23', 2000),
(1003, 51099, '2023-02-14', 2290),
(1004, 52321, '2023-03-08', 2510),
(1005, 52928, '2023-03-20', 3000),
(1006, 53749, '2023-04-17', 1740),
(1007, 54206, '2023-04-21', 3250),
(1008, 54838, '2023-04-30', 1990);
SELECT * FROM customer_returns;

USE ecomm;
DESCRIBE customer_churn;
SELECT
    r.ReturnID,
    r.CustomerID,
    r.ReturnDate,
    r.RefundAmount,
    c.Churn,
    c.Tenure,
    c.PreferredLoginDevice,
    c.CityTier,
    c.WarehouseToHome,
    c.PreferredPaymentMode,
    c.Gender,
    c.HourSpendOnApp,
    c.NumberOfDeviceRegistered,
    c.PreferedOrderCat,
    c.SatisfactionScore,
    c.MaritalStatus,
    c.NumberOfAddress,
    c.Complain,
    c.OrderAmountHikeFromlastYear,
    c.CouponUsed,
    c.OrderCount,
    c.DaySinceLastOrder,
    c.CashbackAmount
FROM customer_returns r
INNER JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
WHERE c.Churn = 1
  AND c.Complain = 1;

SELECT
    r.ReturnID,
    r.CustomerID,
    r.ReturnDate,
    r.RefundAmount,
    c.Churn,
    c.Complain
FROM customer_returns r
INNER JOIN customer_churn c
    ON r.CustomerID = c.CustomerID;
    
    SELECT
    r.ReturnID,
    r.CustomerID,
    r.ReturnDate,
    r.RefundAmount,
    c.Churn,
    c.Complain,
    c.Tenure,
    c.PreferredLoginDevice,
    c.CityTier,
    c.PreferredPaymentMode,
    c.Gender,
    c.SatisfactionScore,
    c.MaritalStatus
FROM customer_returns r
INNER JOIN customer_churn c
    ON r.CustomerID = c.CustomerID
WHERE c.Churn = 1
  AND c.Complain = 1;