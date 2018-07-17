module Layout.ThreeColumn.Styles
    exposing
        ( col1
        , col2
        , col3
        , columns
        )


col1 : String
col1 =
    column ++ "bg-black-10"


col2 : String
col2 =
    column ++ "bg-black-05"


col3 : String
col3 =
    column ++ "bg-black-10"


columns : String
columns =
    """
    dt
    dt--fixed
    """


column : String
column =
    """
    dtc
    tc
    pv4
    """
