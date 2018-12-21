module List_.LargeLinksInline.View exposing (view)

import Html exposing (Html, a, div, li, text, ul)
import Html.Attributes exposing (attribute, class, href)
import List_.LargeLinksInline.Styles as Styles
import List_.Word as Word


view : Html msg
view =
    let
        words =
            Word.list
    in
    div [ attribute "data-name" "component" ]
        [ ul [ class Styles.ul ]
            (List.map wordLink words)
        ]


wordLink : String -> Html msg
wordLink word =
    li [ class Styles.li ]
        [ a [ class Styles.link, href "#" ]
            [ text word ]
        ]
