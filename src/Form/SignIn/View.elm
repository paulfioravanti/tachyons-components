module Form.SignIn.View exposing (view)

import Form.SignIn.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , div
        , fieldset
        , form
        , input
        , label
        , legend
        , main_
        , text
        )
import Html.Attributes
    exposing
        ( attribute
        , class
        , for
        , href
        , id
        , name
        , type_
        , value
        )


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            [ form [ class Styles.form ]
                [ fieldset [ class Styles.fieldset ]
                    [ legend [ class Styles.legend ]
                        [ text "Sign In" ]
                    , emailField
                    , passwordField
                    , rememberMe
                    ]
                , signInButton
                , links
                ]
            ]
        ]


emailField : Html msg
emailField =
    div [ class Styles.email ]
        [ label [ class Styles.label, for "email-address" ]
            [ text "Email" ]
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
    div [ class Styles.password ]
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


rememberMe : Html msg
rememberMe =
    label [ class Styles.rememberMe ]
        [ input [ type_ "checkbox" ]
            []
        , text " Remember me"
        ]


signInButton : Html msg
signInButton =
    div []
        [ input
            [ class Styles.signInButton
            , type_ "submit"
            , value "Sign In"
            ]
            []
        ]


links : Html msg
links =
    div [ class Styles.links ]
        [ a [ href "#0", class Styles.link ]
            [ text "Sign up" ]
        , a [ href "#0", class Styles.link ]
            [ text "Forgot your password?" ]
        ]
