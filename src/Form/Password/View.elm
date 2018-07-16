module Form.Password.View exposing (view)

import Form.Password.Styles as Styles
import Html exposing (Html, div, form, input, label, small, text)
import Html.Attributes exposing (attribute, class, for, id, type_)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ form [ class Styles.form ]
            [ passwordField ]
        ]


passwordField : Html msg
passwordField =
    let
        helperText =
            """
            Must be 9 characters long and contain both a number and an
            uppercase character.
            """
    in
        div [ class Styles.passwordField ]
            [ label [ for "password", class Styles.passwordLabel ]
                [ text "Password" ]
            , input
                [ class Styles.passwordInput
                , id "password"
                , type_ "password"
                , attribute "aria-describedby" "password-desc"
                ]
                []
            , small [ id "password-desc", class Styles.passwordHelperText ]
                [ text helperText ]
            ]
