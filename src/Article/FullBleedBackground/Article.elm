module Article.FullBleedBackground.Article
    exposing
        ( Article
        , example
        )


type alias Article =
    { backgroundImageUrl : String
    , title : String
    , subtitle : String
    , copy : String
    }


example : Article
example =
    { backgroundImageUrl = "https://mrmrs.github.io/photos/12.jpg"
    , title = "Prasat Suor Prat"
    , subtitle = "Siem Reap, Cambodia"
    , copy = "Prasat Suor Prat (Khmer: ប្រាសាទសួព្រ័ត) is a series of twelve towers spanne north to south lining the eastern side of royal square in Angkor Thom, near the town of Siem Reap, Cambodia. The towers are made from rugged laterite and sandstone. The towers are located right in front of Terrace of the Elephants and Terrace of the Leper King, flanking the start of the road leading east to the Victory Gate, on either side of which they are symmetrically arranged. Their function remains unknown."
    }
