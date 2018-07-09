module PageFooter exposing (view)

import PageFooter.View as View
import Html exposing (Html)


view : msg -> Html msg
view msg =
    View.view msg
