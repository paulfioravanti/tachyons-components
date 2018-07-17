module Layout.ThreeColumnCollapseOne.Styles
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
    dt-ns
    dt--fixed-ns
    """


column : String
column =
    """
    dtc-ns
    tc
    pv4
    """
