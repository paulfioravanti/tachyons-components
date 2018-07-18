module List_.ContactPhone.Contact exposing (Contact, list)


type alias Contact =
    { avatarId : String
    , name : String
    , company : String
    , phone : String
    }


list : List Contact
list =
    [ { avatarId = "mrmrs"
      , name = "Mrmrs"
      , company = "Medium Hexagon, LLC"
      , phone = "+1 (999) 555-5555"
      }
    , { avatarId = "jxnblk"
      , name = "Jxnblk"
      , company = "Large Circle, Inc"
      , phone = "+1 (999) 555-5555"
      }
    , { avatarId = "jasonli"
      , name = "Jason Li"
      , company = "Little Blue Square, Inc"
      , phone = "+1 (999) 555-5555"
      }
    , { avatarId = "yavor"
      , name = "Yavor"
      , company = "Large Circle, Inc"
      , phone = "+1 (999) 555-5555"
      }
    ]
