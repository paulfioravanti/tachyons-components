module Button.PillGrow.Styles exposing
    ( basicButton
    , basicButtonWithBorder
    , basicButtonWithThickBorder
    , basicButtonWithThinBorder
    , bottomMargin
    , heading
    , section
    , topMargin
    , topSection
    )


basicButton : String -> String
basicButton colour =
    [ "bg-" ++ colour
    , "br-pill"
    , "dib"
    , "f6"
    , "grow"
    , "mb2"
    , "mr1"
    , "no-underline"
    , "ph3"
    , "pv2"
    , "white"
    ]
        |> String.join " "


basicButtonWithBorder : String -> String
basicButtonWithBorder colour =
    [ colour
    , "ba"
    , "br-pill"
    , "bw1"
    , "dib"
    , "f6"
    , "grow"
    , "mb2"
    , "mr1"
    , "no-underline"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "


basicButtonWithThickBorder : String -> String
basicButtonWithThickBorder colour =
    [ colour
    , "ba"
    , "br-pill"
    , "bw2"
    , "dib"
    , "f6"
    , "grow"
    , "mb2"
    , "mr1"
    , "no-underline"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "


basicButtonWithThinBorder : String -> String
basicButtonWithThinBorder colour =
    [ colour
    , "ba"
    , "br-pill"
    , "dib"
    , "f6"
    , "grow"
    , "mb2"
    , "mr1"
    , "no-underline"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "


bottomMargin : String
bottomMargin =
    "mb4"


heading : String
heading =
    [ "f6"
    , "fw6"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


section : String -> String
section bottomMargin_ =
    [ bottomMargin_
    , "ph3"
    ]
        |> String.join " "


topMargin : String
topMargin =
    "mt4"


topSection : String -> String
topSection topMargin_ =
    [ topMargin_
    , "ph3"
    ]
        |> String.join " "
