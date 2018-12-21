module Layout.FourColumn.Styles exposing
    ( dark
    , light
    , section
    )


dark : String
dark =
    div ++ "bg-black-05"


light : String
light =
    div ++ "bg-black-025"


section : String
section =
    "cf"


div : String
div =
    """
    fl
    pv5
    tc
    w-25
    """
