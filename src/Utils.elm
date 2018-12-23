module Utils exposing (componentsLink)

import Html exposing (Html, a, text)
import Html.Attributes exposing (class, href, title)


componentsLink : String -> String -> Html msg
componentsLink link styles =
    a
        [ class styles
        , href link
        , title "Components"
        ]
        [ text "Components" ]
