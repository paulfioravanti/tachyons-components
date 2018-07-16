module Form.TextareaLabel.View exposing (view)

import Form.TextareaLabel.Styles as Styles
import Html exposing (Html, a, div, form, label, small, span, text, textarea)
import Html.Attributes exposing (attribute, class, for, href, id, name)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ form [ class Styles.form ]
            [ commentsField ]
        ]


commentsField : Html msg
commentsField =
    div [ class Styles.commentsField ]
        [ label [ for "comment", class Styles.commentsLabel ]
            [ text "Comments "
            , span [ class Styles.commentsLabelConstraint ]
                [ text "(optional)" ]
            ]
        , textarea
            [ class Styles.commentsInput
            , id "comment"
            , name "comment"
            , attribute "aria-describedby" "comment-desc"
            ]
            []
        , small [ id "comment-desc", class Styles.commentsHelperText ]
            [ text "Helper text for a form control. Can use this text to "
            , a [ href "#", class Styles.commentsHelperTextLink ]
                [ text "link to more info." ]
            ]
        ]
