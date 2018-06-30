port module Main exposing (main)

import Model exposing (Model)
import Msg exposing (Msg(UrlChange))
import Navigation exposing (Location)
import Styles
import View


port setBodyClasses : String -> Cmd msg


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
    ( {}, setBodyClasses Styles.body )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( model, Cmd.none )
