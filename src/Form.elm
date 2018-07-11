module Form
    exposing
        ( Route
        , bodyClasses
        , checkboxListRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Form.Route as Route exposing (Route)
import Form.Styles as Styles
import Form.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


checkboxListRoute : Route
checkboxListRoute =
    Route.CheckboxList


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer