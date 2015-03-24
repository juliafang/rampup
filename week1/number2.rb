  # we will use the following formula F=(9/5)C +32
    # get input from user
    print "Enter Celsius Temperature: \n"
    # input is the temp in C
    celtemp = gets.chomp
    # since we cannot multiply two strings we need to
    # cast in user input to a Double value
    tempinfahren = (((9*Float(celtemp))/5) + 32)
 
    print "#{celtemp} degrees Celsius is equal to #{tempinfahren} degrees Fahrenheit"