module Article.PhotoEssay.Article
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
    { backgroundImageUrl : String
    , title : String
    , author : String
    , lead : String
    , copyLead : String
    , copy : String
    }


type alias Photo =
    { url : String
    , caption : String
    }


image009 : Photo
image009 =
    { url = "http://mrmrs.github.io/photos/009.jpg"
    , caption = ""
    }


image010 : Photo
image010 =
    { url = "http://mrmrs.github.io/photos/010.jpg"
    , caption = "Photo of a dusk skyline above a grassy rockface covered in trees."
    }


image011 : Photo
image011 =
    { url = "http://mrmrs.github.io/photos/011.jpg"
    , caption = "Photo of the sea and sky on the horizon with the foundations of a demolished house."
    }


image012 : Photo
image012 =
    { url = "http://mrmrs.github.io/photos/012.jpg"
    , caption = "Photo of the sea with mist covering the rocky formations near the shore."
    }


image013 : Photo
image013 =
    { url = "http://mrmrs.github.io/photos/013.jpg"
    , caption = "Photo of the foundations of a building on a cliff overlooking a lighthouse."
    }


example : Article
example =
    { backgroundImageUrl = "http://mrmrs.github.io/photos/display.jpg"
    , title = "A Night Taking Photos at San Francisco’s Spooky Ruins of the Sutro Baths"
    , author = "A story by Nancy Drew"
    , lead = "On March 14, 1896, the Sutro Baths were opened to the public as the world's largest indoor swimming pool establishment."
    , copyLead = "Before it burned to the ground, the structure "
    , copy = "filled a small beach inlet below the Cliff House, also owned by Adolph Sutro at the time. Shortly after closing, a fire in 1966 destroyed the building while it was in the process of being demolished. All that remains of the site are concrete walls, blocked off stairs and passageways, and a tunnel with a deep crevice in the middle. The cause of the fire was arson. Shortly afterwards, the developer left San Francisco and claimed insurance money."
    }
