module Avatar
    exposing
        ( Route
        , bodyClasses
        , matchers
        , circleRoute
        , circleBorderRoute
        , doubleRingRoute
        , roundedLargeRoute
        , roundedMediumRoute
        , roundedSmallRoute
        , view
        )

import Avatar.Route as Route exposing (Route)
import Avatar.Styles as Styles
import Avatar.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


circleRoute : Route
circleRoute =
    Route.Circle


circleBorderRoute : Route
circleBorderRoute =
    Route.CircleBorder


doubleRingRoute : Route
doubleRingRoute =
    Route.DoubleRing


roundedLargeRoute : Route
roundedLargeRoute =
    Route.RoundedLarge


roundedMediumRoute : Route
roundedMediumRoute =
    Route.RoundedMedium


roundedSmallRoute : Route
roundedSmallRoute =
    Route.RoundedSmall


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
