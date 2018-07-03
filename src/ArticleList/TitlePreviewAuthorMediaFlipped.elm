module ArticleList.TitlePreviewAuthorMediaFlipped exposing (view)

import Html exposing (Html, div, h1, text)


view : Html msg -> Html msg
view footer =
    div []
        [ h1 [] [ text "hi!" ]
        , footer
        ]
