module Update exposing (update)

import Model exposing (Model)
import Msg exposing (Msg(ChangeLocation, UrlChange))
import Navigation
import Ports
import Route
import Styles


update : Msg -> Model -> ( Model, Cmd Msg )
update msg _ =
    case msg of
        ChangeLocation route ->
            let
                setUrl =
                    route
                        |> Route.toPath
                        |> Navigation.newUrl

                setBodyClasses =
                    route
                        |> Styles.bodyClasses
                        |> Ports.setBodyClasses
            in
                ( route, Cmd.batch [ setBodyClasses, setUrl ] )

        UrlChange location ->
            let
                route =
                    location
                        |> Route.fromLocation
            in
                ( route, Cmd.none )
