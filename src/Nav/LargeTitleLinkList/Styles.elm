module Nav.LargeTitleLinkList.Styles exposing
    ( homeLink
    , lastNavLink
    , nav
    , navLink
    , navLinks
    )


homeLink : String
homeLink =
    """
    b
    black
    dim
    db
    f1 f-headline-ns
    link
    mb3 mb4-ns
    tc
    """


nav : String
nav =
    "pa3 pa4-ns"


lastNavLink : String
lastNavLink =
    link


navLink : String
navLink =
    link ++ "mr3"


navLinks : String
navLinks =
    """
    pb3
    tc
    """


link : String
link =
    """
    dib
    dim
    f6 f5-ns
    gray
    link
    """
