module ArticleList.TitlePreviewAuthorMediaFlipped exposing (view)

import Footer
import Html exposing (Html, div, h1, text)
import Msg exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "hi!" ]
        , Footer.view
        ]
