module Main exposing (main)

import Model exposing (Model)
import Msg exposing (Msg(ChangeLocation, UrlChange))
import Navigation exposing (Location)
import Ports
import Route
import Styles
import View


main : Program Never Model Msg
main =
    Navigation.program
        UrlChange
        { init = init
        , update = update
        , view = View.view
        , subscriptions = always Sub.none
        }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        setUrl =
            location
                |> Route.fromLocation
                |> Route.toPath
                |> Navigation.newUrl
    in
        ( {}
        , Cmd.batch
            [ Ports.setBodyClasses Styles.body
            , setUrl
            ]
        )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeLocation route ->
            let
                setUrl =
                    route
                        |> Route.toPath
                        |> Navigation.newUrl
            in
                ( model, setUrl )

        UrlChange location ->
            ( model, Cmd.none )
