CREATE TABLE metrics (
date DATE,
time TIMESTAMP,
booking_id VARCHAR(50),
booking_status VARCHAR(50),
customer_id VARCHAR(50),
Vehicle_type VARCHAR(50),
pickup_location VARCHAR(75),
drop_location VARCHAR(75),
avg_vtat NUMERIC,
avg_ctat NUMERIC,
customer_cancelled_ride SMALLINT,
customer_reason_cancellation VARCHAR(75),
driver_cancelled_ride SMALLINT,
driver_reason_cancellation VARCHAR(75),
incomplete_rides SMALLINT,
incomplete_rides_reason VARCHAR(75),
booking_value NUMERIC,
ride_distance NUMERIC,
driver_rating NUMERIC,
customer_rating NUMERIC,
payment_method VARCHAR(50)
);

--Used for Updating and cleaning
UPDATE metrics
SET ride_distance = 24.64
WHERE ride_distance IS NULL;

CREATE VIEW Uber_metrics_view AS
WITH cte_metrics AS(
SELECT
--Bring the date and time together
CONCAT(date + time) AS date_time,
TRIM(BOTH '""' FROM booking_id) AS booking_id,
booking_status,
TRIM(BOTH '""' FROM customer_id) AS customer_id,
vehicle_type,
pickup_location,
avg_vtat,
drop_location,
avg_ctat,
customer_cancelled_ride,
customer_reason_cancellation,
driver_cancelled_ride,
driver_reason_cancellation,
incomplete_rides,
incomplete_rides_reason,
--Money converion from rupee to usd
ROUND((booking_value * 0.01135), 2) AS booking_value_$,
--Distance conversion km to miles
ROUND((ride_distance / 1.609), 2) AS ride_dist_miles,
driver_rating,
customer_rating,
payment_method
FROM metrics)

SELECT
date_time,
LEAD(date_time, 1) OVER(ORDER BY date_time DESC) AS lead_date_time,
booking_id,
booking_status,
customer_id,
vehicle_type,
pickup_location,
avg_vtat AS avg_mins_vtat,
drop_location,
avg_ctat AS avg_mins_ctat,
customer_cancelled_ride,
customer_reason_cancellation,
driver_cancelled_ride,
driver_reason_cancellation,
incomplete_rides,
incomplete_rides_reason,
booking_value_$,
ride_dist_miles,
driver_rating,
customer_rating,
payment_method

FROM cte_metrics
ORDER BY date_time DESC;

