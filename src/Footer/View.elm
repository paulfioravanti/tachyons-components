module Footer.View exposing (view)

import Footer.CenteredIconsHoverGlow.View as CenteredIconsHoverGlow
import Footer.InlineText.View as InlineText
import Footer.Route as Route exposing (Route)
import Footer.SimpleLargeType.View as SimpleLargeType
import Footer.SmallPrint.View as SmallPrint
import Footer.Social.View as Social
import Footer.SocialCircles.View as SocialCircles
import Footer.SocialSimple.View as SocialSimple
import Footer.SocialSimpleText.View as SocialSimpleText
import Footer.SocialText.View as SocialText
import Footer.Studios.View as Studios
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.CenteredIconsHoverGlow ->
            CenteredIconsHoverGlow.view

        Route.InlineText ->
            InlineText.view

        Route.SimpleLargeType ->
            SimpleLargeType.view

        Route.SmallPrint ->
            SmallPrint.view

        Route.Social ->
            Social.view

        Route.SocialCircles ->
            SocialCircles.view

        Route.SocialSimple ->
            SocialSimple.view

        Route.SocialSimpleText ->
            SocialSimpleText.view

        Route.SocialText ->
            SocialText.view

        Route.Studios ->
            Studios.view
