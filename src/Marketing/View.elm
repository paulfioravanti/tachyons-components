module Marketing.View exposing (view)

import Marketing.Route exposing (Route(IPhoneApp))
import Marketing.IPhoneApp.View as IPhoneApp
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        IPhoneApp ->
            IPhoneApp.view footer