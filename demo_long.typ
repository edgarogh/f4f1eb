#import "template.typ": *

#set page(numbering: "1")

#show: project.with(
  title: [Anakin \ Skywalker],
  from_details: [
    Appt. x, \
    Mos Espa, \
    Tatooine \
    anakin\@example.com \ +999 xxxx xxx
  ],
  to_details: [
    Sheev Palpatine \
    500 Republica, \
    Ambassadorial Sector, Senate District, \
    Galactic City, \ Coruscant
  ],
)

Dear Emperor,

You will _never_ guess what happened to me last week-end! #lorem(200)

#lorem(220)

#lorem(180) Hence the scratch on my helmet.

Mr. Skywalker

