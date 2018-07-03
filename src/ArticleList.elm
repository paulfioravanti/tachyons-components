module ArticleList exposing (Route, bodyClasses, matchers, toPath)

import ArticleList.Route as Route exposing (Route)
import ArticleList.Styles as Styles


-- import ArticleList.View as View
-- import Model exposing (Model)
-- import Msg exposing (Msg)

import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


toPath : Route -> String
toPath route =
    Route.toPath route



-- view : Route -> Html Msg
-- view route =
--     View.view route
