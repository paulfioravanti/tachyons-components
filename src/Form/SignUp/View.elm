module Form.SignUp.View exposing (view)

import Form.SignUp.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , div
        , fieldset
        , form
        , input
        , label
        , legend
        , text
        )
import Html.Attributes
    exposing
        ( acceptCharset
        , action
        , attribute
        , class
        , for
        , id
        , method
        , name
        , type_
        , value
        )


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ form
                [ action "sign-up_submit"
                , method "get"
                , acceptCharset "utf-8"
                ]
                [ fieldset [ class Styles.fieldset, id "sign_up" ]
                    [ legend [ class Styles.legend ]
                        [ text "Sign Up" ]
                    , emailField
                    , passwordField
                    ]
                , signUpButton
                ]
            ]
        ]


emailField : Html msg
emailField =
    div [ class Styles.field ]
        [ label [ class Styles.label, for "email-address" ]
            [ text "Email address" ]
        , input
            [ class Styles.emailInput
            , type_ "email"
            , name "email-address"
            , id "email-address"
            ]
            []
        ]


passwordField : Html msg
passwordField =
    div [ class Styles.field ]
        [ label [ class Styles.label, for "password" ]
            [ text "Password" ]
        , input
            [ class Styles.passwordInput
            , type_ "password"
            , name "password"
            , id "password"
            ]
            []
        ]


signUpButton : Html msg
signUpButton =
    div [ class Styles.field ]
        [ input
            [ class Styles.signUpButton
            , type_ "submit"
            , value "Sign In"
            ]
            []
        ]
