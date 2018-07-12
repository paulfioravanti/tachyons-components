module Table.User exposing (User, list)


type alias User =
    { name : String
    , username : String
    , email : String
    , id : String
    }


list : List User
list =
    [ { name = "Hassan Johnson"
      , username = "@hassan"
      , email = "hassan@companywithalongdomain.co"
      , id = "14419232532474"
      }
    , { name = "Taral Hicks"
      , username = "@hicks"
      , email = "taral@companywithalongdomain.co"
      , id = "72326219423551"
      }
    , { name = "Tyrin Turner"
      , username = "@tt"
      , email = "ty@companywithalongdomain.co"
      , id = "92325170324444"
      }
    , { name = "Oliver Grant"
      , username = "@oli"
      , email = "oliverg@companywithalongdomain.co"
      , id = "71165170352909"
      }
    , { name = "Dean Blanc"
      , username = "@deanblanc"
      , email = "dean@companywithalongdomain.co"
      , id = "71865178111909"
      }
    ]
