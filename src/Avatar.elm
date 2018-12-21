module Avatar exposing
    ( Route
    , bodyClasses
    , circleBorderRoute
    , circleRoute
    , doubleRingRoute
    , matchers
    , roundedLargeRoute
    , roundedMediumRoute
    , roundedSmallRoute
    , squareRoute
    , view
    )

import Avatar.Route as Route exposing (Route)
import Avatar.Styles as Styles
import Avatar.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


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


squareRoute : Route
squareRoute =
    Route.Square


view : Route -> Html msg
view route =
    View.view route
