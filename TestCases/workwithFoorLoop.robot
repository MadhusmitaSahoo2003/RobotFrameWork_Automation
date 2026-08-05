

*** Test Cases ***
#for loop1
#    FOR  ${i}  IN RANGE  1   10
#        Log To Console    ${i}
#    END

#for loop2
#    FOR  ${i}  IN  1  2  3  4  5  6
#        Log To Console    ${i}
#    END

#for loop3
#   @{item}  create list  1  2  3  4  5  6
#   FOR    ${i}  IN    @{item}
#       Log To Console    ${i}
#   END

for loop3
   @{item}  create list  1  2  3  4  5  6
   FOR    ${i}  IN    @{item}
       Log To Console    ${i}
       exit for loop if    ${i}==3
   END