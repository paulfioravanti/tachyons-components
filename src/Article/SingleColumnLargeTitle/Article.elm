module Article.SingleColumnLargeTitle.Article
    exposing
        ( Article
        , Photo
        , example
        , image009
        , image010
        , image011
        , image012
        , image013
        )


type alias Article =
    { title : String
    , date : String
    , lead : String
    , paragraph1 : String
    , paragraph2 : String
    , paragraph3 : String
    , paragraph4 : String
    }


type alias Photo =
    { url : String
    , caption : String
    }


image009 : Photo
image009 =
    { url = "https://mrmrs.github.io/photos/009.jpg"
    , caption = ""
    }


image010 : Photo
image010 =
    { url = "https://mrmrs.github.io/photos/010.jpg"
    , caption =
        "Photo of a dusk skyline above a grassy rockface covered in trees."
    }


image011 : Photo
image011 =
    let
        caption =
            """
            Photo of the sea and sky on the horizon with the
            foundations of a demolished house.
            """
    in
        { url = "https://mrmrs.github.io/photos/011.jpg"
        , caption = caption
        }


image012 : Photo
image012 =
    let
        caption =
            """
            Photo of the sea with mist covering the rocky
            formations near the shore.
            """
    in
        { url = "https://mrmrs.github.io/photos/012.jpg"
        , caption = caption
        }


image013 : Photo
image013 =
    let
        caption =
            """
            Photo of the foundations of a building on a cliff overlooking
            a lighthouse.
            """
    in
        { url = "https://mrmrs.github.io/photos/013.jpg"
        , caption = caption
        }


example : Article
example =
    let
        title =
            "A Night Taking Photos at the Spooky Ruins of the Sutro Baths"

        lead =
            """
            On March 14, 1896, the Sutro Baths were opened to the public as the
            world's largest indoor swimming pool establishment.
            """

        paragraph1 =
            """
            Before it burned to the ground, the structure
            filled a small beach inlet below the Cliff House, also owned by
            Adolph Sutro at the time. Shortly after closing, a fire in 1966
            destroyed the building while it was in the process of being
            demolished.
            """

        paragraph2 =
            """
            During high tides, water would flow directly into the pools from the
            nearby ocean, recycling the two million US gallons of water in about
            an hour.
            """

        paragraph3 =
            """
            All that remains of the site are concrete walls, blocked off stairs
            and passageways, and a tunnel with a deep crevice in the middle.
            The cause of the fire was arson. Shortly afterwards, the developer
            left San Francisco and claimed insurance money.
            """

        paragraph4 =
            """
            During low tides, a powerful turbine water pump, built inside a cave
            at sea level, could be switched on from a control room and could
            fill the tanks at a rate of 6,000 US gallons a minute, recycling
            all the water in five hours.
            """
    in
        { title = title
        , date = "March 19th, 2015"
        , lead = lead
        , paragraph1 = paragraph1
        , paragraph2 = paragraph2
        , paragraph3 = paragraph3
        , paragraph4 = paragraph4
        }
