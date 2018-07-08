module Banner.SingleCta.View exposing (view)

import Banner.SingleCta.Styles as Styles
import Html exposing (Html, a, article, div, h2, p, section, text)
import Html.Attributes exposing (class, href)


view : Html msg -> Html msg
view footer =
    div []
        [ section [ class Styles.section ]
            [ article [ class Styles.article ]
                [ div [ class Styles.container ]
                    [ ctaContent
                    , ctaButton
                    ]
                ]
            ]
        , footer
        ]


ctaContent : Html msg
ctaContent =
    let
        copy =
            """
            This is supporting copy for the wonderful promo catchphrase
            that is going to be used.
            """
    in
        div [ class Styles.content ]
            [ div []
                [ h2 [ class Styles.heading ]
                    [ text "This is a promo title" ]
                , p [ class Styles.copy ]
                    [ text copy ]
                ]
            ]


ctaButton : Html msg
ctaButton =
    div [ class Styles.content ]
        [ a [ href "#", class Styles.ctaLink ]
            [ text "Sign up for free" ]
        ]
