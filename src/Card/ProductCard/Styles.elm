module Card.ProductCard.Styles exposing
    ( article
    , content
    , description
    , header
    , heading
    , headingWrapper
    , image
    , price
    , priceWrapper
    )


article : String
article =
    [ "b--black-10"
    , "ba"
    , "br2"
    , "center"
    , "dark-gray"
    , "mw5"
    , "mv4"
    , "w-100 w-50-m w-25-l"
    ]
        |> String.join " "


content : String
content =
    "pa2 ph3-ns pb3-ns"


description : String
description =
    [ "f6"
    , "lh-copy"
    , "measure"
    , "mid-gray"
    , "mt2"
    ]
        |> String.join " "


header : String
header =
    [ "dt"
    , "mt1"
    , "w-100"
    ]
        |> String.join " "


heading : String
heading =
    [ "f5 f4-ns"
    , "mv0"
    ]
        |> String.join " "


headingWrapper : String
headingWrapper =
    "dtc"


image : String
image =
    [ "br--top"
    , "br2"
    , "db"
    , "w-100"
    ]
        |> String.join " "


price : String
price =
    [ "f5"
    , "mv0"
    ]
        |> String.join " "


priceWrapper : String
priceWrapper =
    [ "dtc"
    , "tr"
    ]
        |> String.join " "
