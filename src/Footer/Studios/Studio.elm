module Footer.Studios.Studio exposing (Studio, list)


type alias Studio =
    { name : String
    , street : String
    , city : String
    , phone : String
    }


list : List Studio
list =
    [ { name = "SF"
      , street = "837 Larkin St."
      , city = "San Francisco, CA 94109"
      , phone = "+1 207-555-5555"
      }
    , { name = "LA"
      , street = "1111 Manor Way"
      , city = "Los Angeles, CA 90048"
      , phone = "+1 323-555-5555"
      }
    , { name = "London"
      , street = "11 Downey St."
      , city = "London, UK"
      , phone = "+44 0 5555-5555"
      }
    , { name = "Tokyo"
      , street = "1982 Flangan Rd."
      , city = "Shinjuku, Tokyo"
      , phone = "+99 5555-5555"
      }
    ]
