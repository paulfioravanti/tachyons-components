module Form.View exposing (view)

import Form.Route
    exposing
        ( Route
            ( CheckboxList
            , InputTextLabel
            )
        )
import Form.CheckboxList.View as CheckboxList
import Form.InputTextLabel.View as InputTextLabel
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CheckboxList ->
            CheckboxList.view

        InputTextLabel ->
            InputTextLabel.view
