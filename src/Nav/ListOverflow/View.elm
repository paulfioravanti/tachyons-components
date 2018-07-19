module Nav.ListOverflow.View exposing (view)

import Html exposing (Html, a, div, nav, text)
import Html.Attributes exposing (attribute, class, href, title)
import Nav.ListOverflow.Styles as Styles


view : Html msg
view =
    let
        linkNumbers =
            List.range 1 36
                |> List.map toString
    in
        div [ attribute "data-name" "component" ]
            [ nav [ class Styles.nav ]
                [ div [ class Styles.links ]
                    (List.map link linkNumbers)
                ]
            ]


link : String -> Html msg
link linkNumber =
    let
        linkName =
            "Link " ++ linkNumber
    in
        a [ class Styles.link, href "#", title linkName ]
            [ text linkName ]
