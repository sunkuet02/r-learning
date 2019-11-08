# For installing RJDBC in R, first of all you need to configure java for R
# That's why run command 'R CMD javareconf' and see all the things are okay or not.

# If things are okay, then fine. Otherwise run 'R CMD javareconf -e' and check things are okay or not.

# If okay, then fine otherwise run 'sudo R CMD javareconf' and check. If default java is being set for root then you need to change it. I have copied my java1.8 folder to default-java folder and then it works and generate rJava.so file. That's why you need to run with sudo.

# For installing RJDBC run the below command
#	install.packages('RJDBC')
library(RJDBC)

driver <- JDBC('oracle.jdbc.OracleDriver', classPath = 'ojdbc7.jar')
connection <- dbConnect(driver, "jdbc:oracle:thin:@host:port:service_name_or_sid", "username", "password")

tableData <- dbGetQuery(connection, 'select * from tablename')

pie(table(tableData$STATUS))
