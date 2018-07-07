module Banner.Basic.View exposing (view)

import Banner.Basic.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , article
        , div
        , h1
        , h2
        , img
        , p
        , section
        , text
        )
import Html.Attributes exposing (alt, class, href, src)


view : Html msg -> Html msg
view footer =
    let
        subHeading =
            """
            This will change things. And we want you to be involved. This text
            needs to be longer for testing sake.
            """
    in
        div []
            [ article [ class Styles.article ]
                [ h1 [ class Styles.heading ]
                    [ text "This is a tagline. For x." ]
                , h2 [ class Styles.subHeading ]
                    [ text subHeading ]
                , p [ class Styles.callToAction ]
                    [ text "Sign up for beta access or learn more about x." ]
                , div []
                    [ a [ class Styles.signUp, href "#" ]
                        [ text "Sign Up" ]
                    , a [ class Styles.learnMore, href "#" ]
                        [ text "Learn More" ]
                    ]
                ]
            , footer
            ]
