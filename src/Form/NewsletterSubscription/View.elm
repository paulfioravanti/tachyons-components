module Form.NewsletterSubscription.View exposing (view)

import Form.NewsletterSubscription.Styles as Styles
import Html exposing (Html, div, fieldset, form, input, label, legend, text)
import Html.Attributes
    exposing
        ( attribute
        , class
        , for
        , id
        , name
        , placeholder
        , type_
        , value
        )


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.formWrapper ]
            [ form [ class Styles.form ]
                [ fieldset [ class Styles.fieldset ]
                    [ legend [ class Styles.legend ]
                        [ text "Sign up for our newsletter" ]
                    , signUp
                    ]
                ]
            ]
        ]


signUp : Html msg
signUp =
    div [ class Styles.signUp ]
        [ label [ for "email-address", class Styles.emailLabel ]
            [ text "Email Address" ]
        , input
            [ class Styles.emailInput
            , placeholder "Your Email Address"
            , type_ "text"
            , name "email-address"
            , value ""
            , id "email-address"
            ]
            []
        , input
            [ class Styles.subscribeButton
            , type_ "submit"
            , value "Subscribe"
            ]
            []
        ]
