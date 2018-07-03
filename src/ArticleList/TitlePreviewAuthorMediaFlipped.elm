module ArticleList.TitlePreviewAuthorMediaFlipped exposing (view)

import Footer
import Html exposing (Html, div, h1, text)


view : msg -> Html msg
view msg =
    div []
        [ h1 [] [ text "hi!" ]
        , Footer.view msg
        ]
