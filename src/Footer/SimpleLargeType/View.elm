module Footer.SimpleLargeType.View exposing (view)

import Footer.SimpleLargeType.Styles as Styles
import Html exposing (Html, a, div, footer, p, text)
import Html.Attributes exposing (attribute, class, href, title)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ footer [ class Styles.footer ]
            [ a [ href "mailto:", class Styles.email ]
                [ text "hello@email.com" ]
            , p [ class Styles.company ]
                [ text "© 2016 COMPANY Inc." ]
            , div [ class Styles.links ]
                [ a
                    [ href "/language/"
                    , title "Language"
                    , class Styles.leftLink
                    ]
                    [ text "Language" ]
                , a [ href "/terms/", title "Terms", class Styles.centerLink ]
                    [ text "Terms of Use" ]
                , a
                    [ href "/privacy/"
                    , title "Privacy"
                    , class Styles.rightLink
                    ]
                    [ text "Privacy" ]
                ]
            ]
        ]
