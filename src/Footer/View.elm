module Footer.View exposing (view)

import Footer.Route
    exposing
        ( Route
            ( CenteredIconsHoverGlow
            , InlineText
            , SimpleLargeType
            , SmallPrint
            , Social
            , SocialCircles
            , SocialSimple
            , SocialSimpleText
            , SocialText
            )
        )
import Footer.CenteredIconsHoverGlow.View as CenteredIconsHoverGlow
import Footer.InlineText.View as InlineText
import Footer.SimpleLargeType.View as SimpleLargeType
import Footer.SmallPrint.View as SmallPrint
import Footer.Social.View as Social
import Footer.SocialCircles.View as SocialCircles
import Footer.SocialSimple.View as SocialSimple
import Footer.SocialSimpleText.View as SocialSimpleText
import Footer.SocialText.View as SocialText
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

        Social ->
            Social.view

        SocialCircles ->
            SocialCircles.view

        SocialSimple ->
            SocialSimple.view

        SocialSimpleText ->
            SocialSimpleText.view

        SocialText ->
            SocialText.view
