module Model exposing (Model)

import Browser.Navigation exposing (Key)
import Route exposing (Route)


type alias Model =
    { route : Route
    , navKey : Key
    }
