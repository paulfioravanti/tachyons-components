module ArticleList.TitlePreviewAuthorMedia.Styles
    exposing
        ( article
        , articleLink
        , articleContent
        , articleCopy
        , author
        , byline
        , flexFormatting
        , headline
        , image
        , photo
        , section
        , title
        )


article : String
article =
    [ "bt"
    , "b--black-10"
    ]
        |> String.join " "


articleLink : String
articleLink =
    [ "black"
    , "db"
    , "dim"
    , "no-underline"
    , "ph3 ph0-l"
    , "pv4"
    ]
        |> String.join " "


articleContent : String
articleContent =
    [ "pl3-ns"
    , "w-100 w-60-ns"
    ]
        |> String.join " "


articleCopy : String
articleCopy =
    [ "f5 f5-l"
    , "lh-copy"
    ]
        |> String.join " "


author : String
author =
    "ttu"


byline : String
byline =
    [ "f6"
    , "lh-copy"
    , "mv0"
    ]
        |> String.join " "


flexFormatting : String
flexFormatting =
    [ "flex"
    , "flex-column flex-row-ns"
    ]
        |> String.join " "


headline : String
headline =
    [ "baskerville"
    , "f3"
    , "fw1"
    , "lh-title"
    , "mt0"
    ]
        |> String.join " "


image : String
image =
    "db"


photo : String
photo =
    [ "mb4 mb0-ns"
    , "pr3-ns"
    , "w-100 w-40-ns"
    ]
        |> String.join " "


section : String
section =
    [ "avenir"
    , "center"
    , "mw7"
    ]
        |> String.join " "


title : String
title =
    [ "baskerville"
    , "fw1"
    , "ph3 ph0-l"
    ]
        |> String.join " "
