module Form.View exposing (view)

import Form.Route exposing (Route(CheckboxList))
import Form.CheckboxList.View as CheckboxList
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        CheckboxList ->
            CheckboxList.view footer
