module Article.PhotoEssay.Styles
    exposing
        ( article
        , author
        , backgroundImage
        , clearfix
        , content
        , copy
        , copyLead
        , copyText
        , header
        , heading
        , image
        , image010
        , image011
        , image012
        , image013
        , lead
        , mainContent
        , mainCopy
        , mainImage
        )


article : String
article =
    [ "helvetica"
    , "pb5"
    ]
        |> String.join " "


author : String
author =
    [ "black"
    , "f6"
    , "fw6"
    ]
        |> String.join " "


backgroundImage : String
backgroundImage =
    [ "cover"
    , "dtc"
    , "ph3 ph4-m ph5-l"
    , "v-mid"
    ]
        |> String.join " "


clearfix : String
clearfix =
    "cf"


content : String
content =
    [ "ph3 ph4-m ph5-l"
    , "serif"
    ]
        |> String.join " "


copy : String
copy =
    [ "f5 f3-m"
    , "lh-copy"
    ]
        |> String.join " "


copyLead : String
copyLead =
    [ "center"
    , "measure"
    , "pv4-l"
    ]
        |> String.join " "


copyText : String
copyText =
    [ "center"
    , "measure"
    , "pv4-l"
    ]
        |> String.join " "


header : String
header =
    [ "bg-light-pink"
    , "dt"
    , "vh-100"
    , "w-100"
    ]
        |> String.join " "


image : String
image =
    [ "db"
    , "w-100"
    ]
        |> String.join " "


image010 : String
image010 =
    [ "fl"
    , "pb3"
    , "pr2-l"
    , "w-100 w-50-l"
    ]
        |> String.join " "


image011 : String
image011 =
    [ "fl"
    , "pb3"
    , "pl2-l"
    , "pr1 pr0-l"
    , "w-50"
    ]
        |> String.join " "


image012 : String
image012 =
    [ "fl"
    , "pb3"
    , "pl2 pl0-l"
    , "pr2-l"
    , "w-50"
    ]
        |> String.join " "


image013 : String
image013 =
    [ "fl"
    , "pl2-l"
    , "w-100 w-50-l"
    ]
        |> String.join " "


heading : String
heading =
    [ "f2 f-subheadline-l"
    , "fw9"
    , "lh-title"
    , "measure"
    ]
        |> String.join " "


lead : String
lead =
    [ "center"
    , "f5 f3-m f1-l"
    , "lh-copy"
    , "measure"
    , "pv4"
    ]
        |> String.join " "


mainContent : String
mainContent =
    [ "b--black-10"
    , "bt"
    , "cf"
    , "dt-l"
    , "pv4"
    , "w-100"
    ]
        |> String.join " "


mainCopy : String
mainCopy =
    [ "dtc-l"
    , "f6 f5-m f4-l"
    , "measure-l"
    , "v-mid"
    ]
        |> String.join " "


mainImage : String
mainImage =
    [ "dtc-l"
    , "mw6"
    , "pr3-l"
    , "v-mid"
    ]
        |> String.join " "
