*** Settings ***
Library    DatabaseLibrary
Library     OperatingSystem
Suite Setup    Connect To Database   pymysql  ${DBname}  ${DBuser}  ${DBpassword}  ${DBhost}  ${DBport}
Suite Teardown    Disconnect From Database
*** Variables ***
${DBname}    mydb
${DBuser}    root
${DBpassword}    2003
${DBhost}    localhost
${DBport}    3306
*** Test Cases ***
#Create person table
#   ${output}=   Execute SQL String    Create table person(id integer, first_name VARCHAR(20),last_name VARCHAR(20))
#   Log To Console    ${output}
#   Should Be Equal As Strings    ${output}    None

#Insert into person table
#
#   ${output}=   Execute SQL Script   ${CURDIR}/../Testdata/mydb_dat_insertdata.sql
#   Log To Console    ${output}
#   Should Be Equal As Strings    ${output}    None
#

Check madhu record present in person table
     Check If Exists In Database   select id from mydb.person where first_name='madhu';
Check candy record present in person table
     Check If Not Exists In Database   select id from mydb.person where first_name='candy';
Check person table exists in mydb database
     Table Must Exist  person
Check row count is zero
     Check Row Count    select * from mydb.person where first_name='xyz'  ==  0
Check row count is some value
     Check Row Count     select * from mydb.person where first_name='madhu'   ==  1
Check row count is less than some value
     Check Row Count     select * from mydb.person where first_name='madhu'   >=   1
Update the record in person table
     ${output}=   Execute SQL String   update mydb.person set first_name="jio" where id=104;
     Log To Console    ${output}
     Should Be Equal As Strings    ${output}    None
Reatrive record from table
     @{queryResult}=  query  Select * from mydb.person;
     log to console   many @{queryResult}
Delete record from person table
     ${output}=   Execute SQL String   Delete from mydb.person;
     Should Be Equal As Strings    ${output}    None
