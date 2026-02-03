# OLA-Ride-Analytics
SQL-based analysis of OLA ride booking data with key business insights derived using MySQL and an interactive Power BI dashboard covering bookings, revenue, cancellations, vehicle performance, and customer/driver ratings.

# Project Overview

This project presents an end-to-end analysis of OLA ride booking data using MySQL for data querying and Power BI for interactive visualization. The goal is to derive meaningful business insights related to bookings, revenue, cancellations, vehicle performance, and customer/driver behavior.

# Tech Stack

Database: MySQL

Visualization Tool: Power BI

Techniques Used:

SQL Views

Aggregate Functions (COUNT, SUM, AVG, MAX, MIN)

GROUP BY, ORDER BY, WHERE clauses

Data filtering and transformation

# Key Objectives

Analyze successful vs. canceled bookings

Understand ride distance across vehicle types

Identify top 5 customers based on number of rides

Study payment trends (with focus on UPI)

Analyze driver and customer ratings

Investigate reasons for ride cancellations

Track revenue and ride volume over time

# Power BI Dashboard Insights

The dashboard includes:

Total bookings and total booking value

Booking status breakdown (Success vs. Canceled)

Ride volume trends over time

Revenue by payment method

Vehicle-wise performance metrics

Driver and customer ratings by vehicle type

Cancellation analysis by customer and driver

# Files in this Repository

OLA project.pbix → Power BI dashboard file

OLAproject-SQL.sql → All SQL queries and views

bookings.csv → Dataset used for analysis

OLA-Dashboard-1.png to OLA-Dashboard-5.png → Dashboard screenshots

# SQL Views Created

This project includes views for:

Successful bookings

Average ride distance per vehicle type

Rides canceled by customer

Top 5 customers by ride count

Driver cancellations due to personal/car issues

Max & Min driver rating for Prime Sedan

UPI payment transactions

Average customer rating per vehicle

Total successful ride value

Incomplete rides with reasons
