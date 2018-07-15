module Footer.SmallPrint.View exposing (view)

import Footer.SmallPrint.Styles as Styles
import Html exposing (Html, a, b, div, footer, small, text)
import Html.Attributes exposing (attribute, class, href, title)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ footer [ class Styles.footer ]
            [ small [ class Styles.small ]
                [ text "© 2016 "
                , b [ class Styles.company ] [ text "SOME COMPANY Inc" ]
                , text "., All Rights Reserved"
                ]
            , div [ class Styles.links ]
                [ a [ href "/language/", title "Language", class Styles.link ]
                    [ text "Language" ]
                , a [ href "/terms/", title "Terms", class Styles.link ]
                    [ text "Terms of Use" ]
                , a [ href "/privacy/", title "Privacy", class Styles.link ]
                    [ text "Privacy" ]
                ]
            ]
        ]
