module Link.AnimateBackgroundColor.View exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (attribute)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        []
