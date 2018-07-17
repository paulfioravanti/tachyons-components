module Layout.FourColumnCollapseTwoCollapseOne.Styles
    exposing
        ( four
        , one
        , section
        , three
        , two
        )


four : String
four =
    div ++ "bg-black-30"


one : String
one =
    div ++ "bg-black-10"


section : String
section =
    "cf"


two : String
two =
    div ++ "bg-black-05"


three : String
three =
    div ++ "bg-black-20"


div : String
div =
    """
    fl
    pv4
    tc
    w-100 w-50-m w-25-l
    """
