module Layout.FiveColumnCollapseAlternate.Styles exposing
    ( col1
    , col2
    , col3
    , col4
    , col5
    , columns
    )


col1 : String
col1 =
    """
    bg-black-05
    fl
    pv5
    tc
    w-50 w-20-ns
    """


col2 : String
col2 =
    """
    bg-black-10
    fl
    pv5
    tc
    w-50 w-20-ns
    """


col3 : String
col3 =
    """
    bg-black-20
    fl
    pv5
    tc
    w-100 w-20-ns
    """


col4 : String
col4 =
    col2


col5 : String
col5 =
    col1


columns : String
columns =
    "cf"
