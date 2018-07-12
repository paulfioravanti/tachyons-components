module Nav.FixedSemiTransparent.View exposing (view)

import Html exposing (Html, a, div, header, nav, text)
import Html.Attributes exposing (attribute, class, href, title)
import Nav.FixedSemiTransparent.Styles as Styles


view : Html msg
view =
    let
        links =
            [ "Home", "About", "Store", "Contact" ]
    in
        div [ attribute "data-name" "component" ]
            [ header [ class Styles.header ]
                [ nav [ class Styles.nav ]
                    (List.map link links)
                ]
            ]


link : String -> Html msg
link name =
    a [ href "#", title name, class Styles.link ]
        [ text name ]
