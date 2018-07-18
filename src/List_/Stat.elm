module List_.Stat exposing (Stat, list)


type alias Stat =
    { name : String
    , value : String
    }


list : List Stat
list =
    [ { name = "Closed Issues"
      , value = "1,024"
      }
    , { name = "Open Issues"
      , value = "993"
      }
    , { name = "Next Release"
      , value = "10-22"
      }
    , { name = "Days Left"
      , value = "4"
      }
    , { name = "Favorite Cat"
      , value = "All of Them"
      }
    , { name = "App Downloads"
      , value = "1,200"
      }
    ]
