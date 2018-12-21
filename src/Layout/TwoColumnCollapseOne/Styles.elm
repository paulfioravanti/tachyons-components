module Layout.TwoColumnCollapseOne.Styles exposing
    ( col1
    , col2
    , columns
    )


col1 : String
col1 =
    column ++ "bg-near-white"


col2 : String
col2 =
    column ++ "bg-light-gray"


columns : String
columns =
    "cf"


column : String
column =
    """
    fl
    tc
    w-100 w-50-ns
    """
