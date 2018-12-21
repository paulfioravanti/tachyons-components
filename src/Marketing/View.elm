module Marketing.View exposing (view)

import Html exposing (Html)
import Marketing.IPhoneApp.View as IPhoneApp
import Marketing.Route as Route exposing (Route)


view : Route -> Html msg
view route =
    case route of
        Route.IPhoneApp ->
            IPhoneApp.view
