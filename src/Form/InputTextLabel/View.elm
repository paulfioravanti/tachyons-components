module Form.InputTextLabel.View exposing (view)

import Form.InputTextLabel.Styles as Styles
import Html exposing (Html, div, form, input, label, small, span, text)
import Html.Attributes exposing (attribute, class, for, id, type_)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ form [ class Styles.form ]
            [ nameField ]
        ]


nameField : Html msg
nameField =
    div [ class Styles.nameField ]
        [ label [ for "name", class Styles.nameLabel ]
            [ text "Name "
            , span [ class Styles.nameLabelConstraint ]
                [ text "(optional)" ]
            ]
        , input
            [ class Styles.nameInput
            , id "name"
            , type_ "text"
            , attribute "aria-describedby" "name-desc"
            ]
            []
        , small [ id "name-desc", class Styles.nameHelperText ]
            [ text "Helper text for the form control." ]
        ]
