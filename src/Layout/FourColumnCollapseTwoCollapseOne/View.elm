module Layout.FourColumnCollapseTwoCollapseOne.View exposing (view)

import Html exposing (Html, article, div, h1, img, p, section, text)
import Html.Attributes exposing (alt, attribute, class, src, style)
import Layout.FourColumnCollapseTwoCollapseOne.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            [ div [ class Styles.one ]
                [ text "1" ]
            , div [ class Styles.two ]
                [ text "2" ]
            , div [ class Styles.three ]
                [ text "3" ]
            , div [ class Styles.four ]
                [ text "4" ]
            ]
        ]
