#This file will show how to work with mysql in R
#Step 1: Install RMySQL lib via

#	install.packages('RMySQL',type='source')

# for this you need to install the following libs in ubuntu 'libmariadb-client-lgpl-dev' (mentioned in github page)
# and other libssl-dev libraries

# Step 2: Import library and connect to database 

library(RMySQL)
con <- dbConnect(MySQL(), user='root', password='root', dbname='r-practice', host='127.0.0.1', port=3306)

# Please, mind that 'localhost' will not work in the host argument in dbConnect() method, give '127.0.0.1' 
# Hurrah ! Now play with mysql with the 'con' variable. 


# I have created a table with the following script.
# create table HouseRent (
#    id int,
#    rent decimal(10,2), 
#    rooms int(2),
#    area decimal(10, 2),
#    location varchar(10),
#    PRIMARY KEY (id)
# );
#


# Now time to select from the table
houseRent <- dbGetQuery(con, 'select * from HouseRent') 

pie(table(houseRent$rooms))
#Above query will give you data from your table
