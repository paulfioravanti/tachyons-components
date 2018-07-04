port module Ports exposing (scrollToTopOfPage, setBodyClasses)


port scrollToTopOfPage : () -> Cmd msg


port setBodyClasses : String -> Cmd msg
