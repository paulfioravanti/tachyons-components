module Msg exposing (Msg(..))

import Browser exposing (UrlRequest)
import Route exposing (Route)
import Url exposing (Url)


type Msg
    = UrlChanged Url
    | LinkClicked UrlRequest
