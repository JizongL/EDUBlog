#!/usr/bin/env python
# -*- coding: utf-8 -*-

# First, we import the needed libraries

# urllib2 will allow us
# to go on Earthquakes Canada website
import urllib.request as urllib2

# BeautifulSoup will help us
# to work the html code
# of the webpage where
# we can find all the data.
from bs4 import BeautifulSoup

# datetime is used for time and dates.
import datetime

# First, let's create a list
# in which we will put all the data.
data = []

# Here we go! We load the webpage
# of Earthquakes Canada, in which
# we have all the data
# for the earthquakes of the
# last thirty days.
response = urllib2.urlopen(
    'http://www.earthquakescanada.nrcan.gc.ca/recent/maps-cartes/index-eng.php?tpl_region=canada')
# Once the webpage is loaded,
# we send the html code to
# BeautifulSoup. It will convert it,
# which will allow us to work with it.
soup = BeautifulSoup(response.read())

# Now, we can look for the table
# that contains all the data.
# If you look carefully to the html code,
# you'll see that the table has the attribute "summary"
# with the value "Event list".
# That's what we use here to retrieve it.
table = soup.find("table", {"summary": "Event list"})
# In the table, each line is between <tr></tr> tags.
# With the code below, each line is now into a list.
# While we're at it, we skip the first line, which doesn't contain
# data, but just the headers.
table = table.findAll("tr")[1:]

# Now, we take each line of the table
# and we work with their data. To do that,
# we start a loop.
for line in table:

    # First, we extract each information.
    # As we saw it in the html code, each information has
    # a different "headers". We use each "headers" to grab each information
    # and put it into a unique variable.
    earthquake_date = line.find("td", {"headers": "date"}).text.strip()
    earthquake_time = line.find("td", {"headers": "time"}).text.strip()
    earthquake_lat = line.find("td", {"headers": "lat"}).text.strip()
    earthquake_lon = line.find("td", {"headers": "lon"}).text.strip()
    earthquake_depth = line.find("td", {"headers": "depth"}).text.strip()
    earthquake_mag = line.find("td", {"headers": "mag"}).text.strip()
    earthquake_felt = line.find("td", {"headers": "felt"}).text.strip()
    earthquake_region = line.find("td", {"headers": "region"}).text.strip().replace("   ", " ")

    # In the region column, we usually find the city and the province.
    # It's better to have them in two distinct variables.
    # We use the comma to split them.
    try:
        region_province = earthquake_region.split(',')
        earthquake_region = region_province[0]
        earthquake_province = region_province[1]
    # If there isn't a comma, like in "atlantic ocean",
    # the province variable stays empty.
    except:
        earthquake_province = ""

    # Now, we have to work with the time and the date.
    # With Python, time and date are combined into datetime objects.
    # Here, we merge and convert earthquake_date and earthquake_time
    # into a datetime object. The time on the website is Universal Time.
    # We substract 5 hours to obtain Montreal time.
    earthquake_time_date = datetime.datetime.strptime(earthquake_date + " " + earthquake_time, '%Y/%m/%d %H:%M:%S')
    earthquake_time_date = earthquake_time_date - datetime.timedelta(hours=5)

    # Here, we display on the terminal screen all the variables
    # to be sure that everything works well.
    print
    earthquake_time_date, earthquake_lat, earthquake_lon, earthquake_depth, earthquake_mag, earthquake_felt, earthquake_region, earthquake_province

    # And now we add all the data into our "data" variable
    # that we created at the beginning.
    data.append([earthquake_time_date, earthquake_lat, earthquake_lon, earthquake_depth, earthquake_mag, earthquake_felt, earthquake_region, earthquake_province])
