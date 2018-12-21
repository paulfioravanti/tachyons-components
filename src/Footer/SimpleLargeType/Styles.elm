module Footer.SimpleLargeType.Styles exposing
    ( centerLink
    , company
    , email
    , footer
    , leftLink
    , links
    , rightLink
    )


centerLink : String
centerLink =
    link ++ "ph2"


company : String
company =
    """
    b
    db
    f6
    lh-solid
    ttu
    """


email : String
email =
    """
    b
    black-70
    dim
    lh-solid
    link
    f3 f2-ns
    """


footer : String
footer =
    """
    b--black-10
    black-70
    bt
    ph3 ph4-ns
    pv6
    """


leftLink : String
leftLink =
    link ++ "pr2"


links : String
links =
    "mt5"


rightLink : String
rightLink =
    link ++ "pl2"


link : String
link =
    """
    dib
    dim
    f6
    mid-gray
    """
