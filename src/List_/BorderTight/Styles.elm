module List_.BorderTight.Styles exposing
    ( heading
    , lastChild
    , li
    , ul
    )


heading : String
heading =
    """
    bold
    center
    f4
    mw5
    """


lastChild : String
lastChild =
    listElement


li : String
li =
    listElement ++ "bb"


ul : String
ul =
    """
    b--light-silver
    ba
    br3
    center
    list
    ml0
    pl0
    mw5
    """


listElement : String
listElement =
    """
    b--light-silver
    ph3
    pv2
    """
