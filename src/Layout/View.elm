module Layout.View exposing (view)

import Layout.Route
    exposing
        ( Route
            ( AspectRatio16x9
            , AspectRatio1x1
            , AspectRatio3x4
            , AspectRatio4x3
            , AspectRatio4x6
            , AspectRatio5x7
            , AspectRatio5x8
            , AspectRatio6x4
            )
        )
import Layout.AspectRatio16x9.View as AspectRatio16x9
import Layout.AspectRatio1x1.View as AspectRatio1x1
import Layout.AspectRatio3x4.View as AspectRatio3x4
import Layout.AspectRatio4x3.View as AspectRatio4x3
import Layout.AspectRatio4x6.View as AspectRatio4x6
import Layout.AspectRatio5x7.View as AspectRatio5x7
import Layout.AspectRatio5x8.View as AspectRatio5x8
import Layout.AspectRatio6x4.View as AspectRatio6x4
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AspectRatio16x9 ->
            AspectRatio16x9.view

        AspectRatio1x1 ->
            AspectRatio1x1.view

        AspectRatio3x4 ->
            AspectRatio3x4.view

        AspectRatio4x3 ->
            AspectRatio4x3.view

        AspectRatio4x6 ->
            AspectRatio4x6.view

        AspectRatio5x7 ->
            AspectRatio5x7.view

        AspectRatio5x8 ->
            AspectRatio5x8.view

        AspectRatio6x4 ->
            AspectRatio6x4.view
