module DefinitionList.View exposing (view)

import DefinitionList.Inline.View as Inline
import DefinitionList.Route exposing (Route(Inline, Simple))
import DefinitionList.Simple.View as Simple
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Inline ->
            Inline.view

        Simple ->
            Simple.view
