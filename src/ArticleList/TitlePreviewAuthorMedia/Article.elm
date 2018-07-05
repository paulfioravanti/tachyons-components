module ArticleList.TitlePreviewAuthorMedia.Article
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
    }


list : List Article
list =
    [ article1, article2, article3 ]


article1 : Article
article1 =
    let
        headline =
            """
            Tech Giant Invests Huge Money to Build a Computer
            Out of Science Fiction
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
        }


article2 : Article
article2 =
    let
        copy =
            """
            A warehouse is a commercial building for storage of goods.
            Warehouses are used by manufacturers, importers, exporters,
            wholesalers, transport businesses, customs, etc. They are usually
            large plain buildings in industrial areas of cities, towns and
            villages.
            """
    in
        { headline = "Warehouse Prices Are Fast on the Rise"
        , copy = copy
        , imageUrl = "https://mrmrs.github.io/photos/warehouse.jpg"
        , caption = "Photo of a warehouse with stacked shelves."
        , author = "Robin Darnell"
        }


article3 : Article
article3 =
    let
        copy =
            """
            Whale is the common name for a widely distributed and diverse group
            of fully aquatic placental marine mammals. They are an informal
            grouping within the infraorder Cetacea, usually excluding dolphins
            and porpoises.
            """
    in
        { headline =
            "Giant Whale Invests Huge Money to Build a Computer Out of Plankton"
        , copy = copy
        , imageUrl = "https://mrmrs.github.io/photos/whale.jpg"
        , caption = "Photo of a whale's tale coming crashing out of the water."
        , author = "Robin Darnell"
        }
