3) echo "'Kal Ho Naa Ho', 'Veer-Zaara', and 'Swades: We The People'"
;;
4) echo "'Gangs of Wasseypur' and  'Lagaan: Once Upon a Time in India'"
;;
esac
break
  ;;
  year)
#Portion created by pat reynolds 8/16/21
#If the user selects to search by year, the output will be based on said year. If invalid input; user is reprompted.
#Cases that would cause an error/malformed title - if the title has comma's in it.
PS3="Please select the number corresponding to the year you wish to search by: "
select i in 2015 2016 2017 2018 2019 2020 exit
do
        case $i in
        2015)
        echo "Movies matching selected year."
        awk -F',' '{ if ($2 == "2015") { print $1 } }' Movies.csv
        break
        ;;
        2016)
        echo "Movies matching selected year."
        awk -F',' '{ if ($2 == "2016") { print $1 } }' Movies.csv
        break
        ;;
        2017)
        echo "Movies matching selected year."
        awk -F',' '{ if ($2 == "2017") { print $1 } }' Movies.csv
        break
        ;;
        2018)
        echo "Movies matching selected year."
        awk -F',' '{ if ($2 == "2018") { print $1 } }' Movies.csv
        break
        ;;
