module List_.LinksAnimateColor.View exposing (view)

import Html exposing (Html, a, div, section, text)
import Html.Attributes exposing (attribute, class, href)
import List_.LinksAnimateColor.Styles as Styles
import List_.LinksAnimateColor.Link as Link exposing (Link)


view : Html msg
view =
    let
        links =
            Link.list
    in
        div [ attribute "data-name" "component" ]
            [ section [ class Styles.section ]
                (List.map wordLink links)
            ]


wordLink : Link -> Html msg
wordLink { color, url, linkText } =
    a [ class (Styles.link color), href url ]
        [ text linkText ]
