#!/bin/bash

echo "enter first name"
read FIRSTNAME
echo "enter last name"
read LASTNAME
echo "enter userage"
read USERAGE
echo "Your full name is : $FIRSTNAME $LASTNAME"
echo "Your current age is : $USERAGE"
echo "You will be : "`expr $USERAGE + 10`" old after 10 years"
