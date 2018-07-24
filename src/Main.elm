module Main exposing (main)

import Model exposing (Model)
import Msg exposing (Msg(ChangeLocation, UrlChange))
import Navigation exposing (Location)
import Ports
import Route
import Styles
import Update
import View


main : Program Never Model Msg
main =
    Navigation.program
        UrlChange
        { init = init
        , update = Update.update
        , view = View.view ChangeLocation
        , subscriptions = always Sub.none
        }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        route =
            Route.fromLocation location

        setBodyClasses =
            route
                |> Styles.bodyClasses
                |> Ports.setBodyClasses

        setUrl =
            route
                |> Route.toPath
                |> Navigation.newUrl
    in
        ( route, Cmd.batch [ setBodyClasses, setUrl ] )
