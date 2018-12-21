module ArticleList.Styles exposing (bodyClasses, flexFormatting, image)

import ArticleList.Route as Route exposing (Route)


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        Route.TitlePreviewAuthorMedia ->
            [ "bg-near-white"
            , "sans-serif"
            , "w-100"
            ]

        Route.TitlePreviewAuthorMediaFlipped ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]


flexFormatting : String
flexFormatting =
    [ "flex"
    , "flex-column flex-row-ns"
    ]
        |> String.join " "


image : String
image =
    "db"
