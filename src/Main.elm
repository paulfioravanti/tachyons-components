port module Main exposing (..)

import Html
import Model exposing (Model)
import Msg exposing (Msg(NoOp))
import Styles
import View


port setBodyClasses : String -> Cmd msg


init : ( Model, Cmd Msg )
init =
    ( {}, setBodyClasses Styles.body )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = View.view
        , subscriptions = always Sub.none
        }
