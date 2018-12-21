module Nav.TitleLinkList.Styles exposing
    ( firstNavLink
    , lastNavLink
    , navLink
    , navLinks
    )


firstNavLink : String
firstNavLink =
    link
        ++ """
           b
           black
           mr3
           """


lastNavLink : String
lastNavLink =
    link ++ "gray"


navLink : String
navLink =
    link
        ++ """
           gray
           mr3
           """


navLinks : String
navLinks =
    """
    pa3 pa4-ns
    """


link : String
link =
    """
    dib
    dim
    f6 f5-ns
    link
    """
