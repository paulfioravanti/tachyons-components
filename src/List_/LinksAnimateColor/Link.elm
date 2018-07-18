module List_.LinksAnimateColor.Link exposing (Link, list)


type alias Link =
    { color : String
    , url : String
    , linkText : String
    }


list : List Link
list =
    [ { color = "dark-blue"
      , url = "http://mrmrs.github.io/gifolio"
      , linkText = "portfolio"
      }
    , { color = "blue"
      , url = "http://mrsjxn.com"
      , linkText = "music"
      }
    , { color = "light-blue"
      , url = "http://prnt.cc"
      , linkText = "print work"
      }
    , { color = "green"
      , url = "http://mrmrs.github.io"
      , linkText = "photography"
      }
    , { color = "light-green"
      , url = "http://mrmrs.github.io/writing"
      , linkText = "writing"
      }
    , { color = "yellow"
      , url = "http://cssstats.com"
      , linkText = "cssstats"
      }
    , { color = "gold"
      , url = "http://pesticide.io"
      , linkText = "pesticide"
      }
    , { color = "orange"
      , url = "http://gfffs.com"
      , linkText = "gifs"
      }
    , { color = "light-red"
      , url = "http://github.com/mrmrs"
      , linkText = "github"
      }
    , { color = "red"
      , url = "http://dribbble.com/mrmrs"
      , linkText = "dribbble"
      }
    , { color = "hot-pink"
      , url = "http://dribbble.com/mrmrs"
      , linkText = "medium"
      }
    , { color = "pink"
      , url = "http://instagram.com/mrmrs_"
      , linkText = "instagram"
      }
    , { color = "light-purple"
      , url = "http://unsplash.com/mrmrs"
      , linkText = "unsplash"
      }
    , { color = "purple"
      , url = "http://twitter.com/mrmrs_"
      , linkText = "twitter"
      }
    ]
