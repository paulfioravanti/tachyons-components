module Marketing
    exposing
        ( Route
        , bodyClasses
        , iphoneAppRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Marketing.Route as Route exposing (Route)
import Marketing.Styles as Styles
import Marketing.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


iphoneAppRoute : Route
iphoneAppRoute =
    Route.IPhoneApp


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
