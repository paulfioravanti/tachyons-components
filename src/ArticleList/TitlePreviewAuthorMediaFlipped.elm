module ArticleList.TitlePreviewAuthorMediaFlipped exposing (view)

import Html exposing (Html, div, h1, text)


view : msg -> Html msg -> Html msg
view msg footer =
    div []
        [ h1 [] [ text "hi!" ]
        , footer
        ]
