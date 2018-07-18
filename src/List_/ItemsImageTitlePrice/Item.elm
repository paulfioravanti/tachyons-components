module List_.ItemsImageTitlePrice.Item exposing (Item, list)


type alias Item =
    { id : String
    , title : String
    , author : String
    , price : String
    }


list : List Item
list =
    [ { id = "10"
      , title = "Grid Systems"
      , author = "Josef Müller-Brockmann"
      , price = "$75.00"
      }
    , { id = "02"
      , title = "History of the Poster"
      , author = "Josef Müller-Brockmann"
      , price = "$15.00"
      }
    , { id = "04"
      , title = "Graphic Design in IBM: Typography, Photography, and Illustration"
      , author = "Josef Müller-Brockmann"
      , price = "$15.00"
      }
    , { id = "06"
      , title = "Fotoplakate: Von den Anfängen"
      , author = "Josef Müller-Brockmann"
      , price = "$15.00"
      }
    , { id = "30"
      , title = "The Graphic Artist"
      , author = "Josef Müller-Brockmann"
      , price = "$15.00"
      }
    , { id = "10"
      , title = "A History of Visual Communication (Geschichte der visuellen Kommunikation)"
      , author = "Josef Müller-Brockmann"
      , price = "$15.00"
      }
    ]
