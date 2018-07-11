module Button.BasicPreviousNext.Styles
    exposing
        ( container
        , nextButton
        , nextLabel
        , previousButton
        , previousLabel
        , svg
        )


container : String
container =
    [ "flex"
    , "items-center"
    , "justify-center"
    , "pa4"
    ]
        |> String.join " "


nextButton : String
nextButton =
    button
        |> String.join " "


nextLabel : String
nextLabel =
    "pr1"


previousButton : String
previousButton =
    "mr4"
        :: button
        |> String.join " "


previousLabel : String
previousLabel =
    "pl1"


svg : String
svg =
    "w1"


button : List String
button =
    [ "ba"
    , "bg-animate"
    , "black"
    , "border-box"
    , "f5"
    , "hover-bg-black"
    , "hover-white"
    , "inline-flex"
    , "items-center"
    , "no-underline"
    , "pa3"
    ]
