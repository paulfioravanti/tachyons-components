module Footer.InlineText.View exposing (view)

import Footer.InlineText.Styles as Styles
import SvgLogo
import Html exposing (Html, a, div, footer, p, span, text)
import Html.Attributes exposing (attribute, class, href, style, title)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ footer [ class Styles.footer ]
            [ p [ class Styles.paragraph ]
                [ span [ class Styles.company ]
                    [ text "©2048 Your Company LLC, Inc." ]
                , a [ class Styles.terms, href "/terms" ]
                    [ text "Terms" ]
                , text " / "
                , a [ class Styles.privacy, href "/privacy" ]
                    [ text "Privacy" ]
                , text " / "
                , a [ class Styles.email, href "#" ]
                    [ text "hi@yourcompany.co" ]
                ]
            ]
        ]
