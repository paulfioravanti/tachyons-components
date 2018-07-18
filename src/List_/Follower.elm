module List_.Follower exposing (Follower, list)


type alias Follower =
    { id : String
    , name : String
    , handle : String
    }


list : List Follower
list =
    [ { id = "2"
      , name = "Young Gatchell"
      , handle = "@yg"
      }
    , { id = "3"
      , name = "Arnoldo Degraff"
      , handle = "@99xx88randomhandle"
      }
    , { id = "4"
      , name = "Deirdre Lachance"
      , handle = "@favfavfav"
      }
    , { id = "5"
      , name = "Frederic Starner"
      , handle = "@hungryhippofanatic"
      }
    , { id = "6"
      , name = "Cleveland Ridout"
      , handle = "@purethinking"
      }
    , { id = "7"
      , name = "Leticia Fearon"
      , handle = "@retrofeels"
      }
    , { id = "10"
      , name = "Ahmad Backer"
      , handle = "@ahmadBB"
      }
    , { id = "11"
      , name = "Carlie Noakes"
      , handle = "@carnoakes99"
      }
    ]
