module ArticleList.TitlePreviewAuthorMediaFlipped.Styles exposing
    ( article
    , articleContent
    , articleCopy
    , author
    , byline
    , flexFormatting
    , headline
    , image
    , photo
    , section
    , timestamp
    , title
    )

import ArticleList.Styles as Styles


article : String
article =
    [ "bb"
    , "bt"
    , "b--black-10"
    , "ph3 ph0-l"
    , "pv4"
    ]
        |> String.join " "


articleContent : String
articleContent =
    [ "order-2 order-1-ns"
    , "pr3-ns"
    , "w-100 w-60-ns"
    ]
        |> String.join " "


articleCopy : String
articleCopy =
    [ "athelas"
    , "f5 f4-l"
    , "lh-copy"
    ]
        |> String.join " "


author : String
author =
    "ttu"


byline : String
byline =
    [ "f6"
    , "gray"
    , "lh-copy"
    , "mv0"
    ]
        |> String.join " "


flexFormatting : String
flexFormatting =
    Styles.flexFormatting


headline : String
headline =
    [ "athelas"
    , "f3"
    , "lh-title"
    , "mt0"
    ]
        |> String.join " "


image : String
image =
    Styles.image


photo : String
photo =
    [ "mb4 mb0-ns"
    , "order-1 order-2-ns"
    , "pl3-ns"
    , "w-100 w-40-ns"
    ]
        |> String.join " "


section : String
section =
    [ "center"
    , "mw7"
    ]
        |> String.join " "


timestamp : String
timestamp =
    [ "db"
    , "f6"
    , "gray"
    ]
        |> String.join " "


title : String
title =
    [ "athelas"
    , "ph3 ph0-l"
    ]
        |> String.join " "
