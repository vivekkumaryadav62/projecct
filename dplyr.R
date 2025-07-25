library(dplyr)

## 
library(nycflights13)


dim(flights)
View(flights)

flights

f1 = flights



write.csv(f1,"C:\\Users\\excel\\OneDrive\\Documents\\Day-wise PPT\\Day 4 - Intro to R and R studio\\f333333.csv")


f2 = read.csv("C:\\Users\\excel\\OneDrive\\Documents\\Day-wise PPT\\Day 4 - Intro to R and R studio\\flightsdata12345.csv")

View(f2)

## --------------
filter(flights, month == 1, day == 1)

F2 = filter(flights, month == 1, day == 1)

## ----------
arrange(flights, year, month, day)

f4 = arrange(flights,dep_delay,arr_delay)

## -----------
f3 = arrange(flights, desc(arr_delay))

## ----------------
# Select columns by name
select(flights, year, month, day)
# Select all columns between year and day (inclusive)
select(flights, year:day)
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))


## Create new columns-----------------
f6 = mutate(flights,
  gain = arr_delay - dep_delay,
  speed = distance / air_time * 60
)

## -------------
mutate(flights,
  gain = arr_delay - dep_delay,
  gain_per_hour = gain / (air_time / 60)
)

## ---------------
sample_n(flights, 10)

sample_frac(flights, 0.1)

## ---------------
destinations <- group_by(flights, dest)
summarise(destinations,
  planes = n_distinct(tailnum),
  flights = n()
)

## ------------------
daily <- group_by(flights, year, month, day)
(per_day   <- summarise(daily, flights = n()))
(per_month <- summarise(per_day, flights = sum(flights)))
(per_year  <- summarise(per_month, flights = sum(flights)))

## --------------
# `year` represents the integer 1
select(flights, year)
select(flights, 1)



mean(flights$arr_delay, na.rm = TRUE)


f1=flights
write.csv(f1,"C:\\Users\\excel\\OneDrive\\Documents\\flightsfile.csv")
write.csv(f1,"C:\\Users\\excel\\OneDrive\\Documents\\flightsdata12345.csv")




read.csv("C:\\Users\\excel\\OneDrive\\Documents\\flightsfile.csv")
