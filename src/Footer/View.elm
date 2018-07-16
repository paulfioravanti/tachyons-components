module Footer.View exposing (view)

import Footer.Route
    exposing
        ( Route
            ( CenteredIconsHoverGlow
            , InlineText
            , SimpleLargeType
            , SmallPrint
            , SocialCircles
            , SocialSimple
            , SocialSimpleText
            )
        )
import Footer.CenteredIconsHoverGlow.View as CenteredIconsHoverGlow
import Footer.InlineText.View as InlineText
import Footer.SimpleLargeType.View as SimpleLargeType
import Footer.SmallPrint.View as SmallPrint
import Footer.SocialCircles.View as SocialCircles
import Footer.SocialSimple.View as SocialSimple
import Footer.SocialSimpleText.View as SocialSimpleText
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CenteredIconsHoverGlow ->
            CenteredIconsHoverGlow.view

        InlineText ->
            InlineText.view

        SimpleLargeType ->
            SimpleLargeType.view

        SmallPrint ->
            SmallPrint.view

        SocialCircles ->
            SocialCircles.view

        SocialSimple ->
            SocialSimple.view

        SocialSimpleText ->
            SocialSimpleText.view
