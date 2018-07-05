module ArticleList.TitlePreviewAuthorMediaFlipped.Article
    exposing
        ( Article
        , list
        )


type alias Article =
    { headline : String
    , copy : String
    , imageUrl : String
    , caption : String
    , author : String
    , timestamp : String
    }


list : List Article
list =
    [ article1, article2, article3 ]


article1 : Article
article1 =
    let
        headline =
            """
            Tech Giant Invests Huge Money to Build a Computer Out of
            Science Fiction
            """

        copy =
            """
            The tech giant says it is ready to begin planning a quantum
            computer, a powerful cpu machine that relies on subatomic particles
            instead of transistors.
            """
    in
        { headline = headline
        , copy = copy
        , imageUrl = "https://mrmrs.github.io/photos/cpu.jpg"
        , caption =
            "Photo of a dimly lit room with a computer interface terminal."
        , author = "Robin Darnell"
        , timestamp = "Nov. 21, 2016"
        }


article2 : Article
article2 =
    let
        copy =
            """
            This giant of a whale says it is ready to begin planning a new
            swim later this afternoon. A powerful mammal that relies on fish
            and plankton instead of hamburgers.
            """
    in
        { headline = "A whale takes up residence in a large body of water"
        , copy = copy
        , imageUrl = "https://mrmrs.github.io/photos/whale.jpg"
        , caption = "Photo of a whale's tale coming crashing out of the water."
        , author = "Katherine Grant"
        , timestamp = "Nov. 19, 2016"
        }


article3 : Article
article3 =
    let
        copy =
            """
            Archaeologists have found more than 40 tons of vinyl records, some
            more than a five years old, shedding light on early hipster trends.
            """
    in
        { headline =
            "'We Couldn't Believe Our Eyes': A Lost World of Vinyl Is Found"
        , copy = copy
        , imageUrl = "https://mrmrs.github.io/photos/warehouse.jpg"
        , caption = "Photo of a warehouse with stacked shelves."
        , author = "Imelda Clancy"
        , timestamp = "Nov. 19, 2016"
        }
