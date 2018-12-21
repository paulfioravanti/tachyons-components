module Page.SwissCoverFiveColumns.Styles exposing
    ( br
    , column
    , columns
    , header
    , heading
    , image
    , main_
    , preHeading
    , small
    )


br : String
br =
    "dn db-ns"


column : String
column =
    """
    fl-ns
    pr3-m pr5-l
    w-50-m w-20-l
    """


columns : String
columns =
    """
    f6
    fl
    lh-copy
    mb4
    w-100
    """


header : String
header =
    """
    fr
    w-100 w-80-l
    """


heading : String
heading =
    """
    f2 f1-l
    lh-title
    mb4 mb5-ns
    mt0
    """


image : String
image =
    "db"


main_ : String
main_ =
    """
    center
    cf
    mw9
    pa3 pa4-m pa5-l
    """


preHeading : String
preHeading =
    "f6"


small : String
small =
    "fw6"
