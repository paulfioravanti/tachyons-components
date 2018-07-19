module Nav.LogoLinksInlineCollapse.Styles
    exposing
        ( image
        , imageLink
        , lastNavLink
        , nav
        , navLink
        , navLinks
        )


image : String
image =
    """
    br-100
    dib
    h2
    w2
    """


imageLink : String
imageLink =
    """
    db dtc-l
    dim
    link
    mb2 mb0-l
    mid-gray
    tc tl-l
    v-mid
    w-100 w-25-l
    """


lastNavLink : String
lastNavLink =
    link


nav : String
nav =
    """
    db dt-l
    border-box
    pa3 ph5-l
    w-100
    """


navLink : String
navLink =
    link ++ "mr3 mr4-l"


navLinks : String
navLinks =
    """
    db dtc-l
    tc tr-l
    v-mid
    w-100 w-75-l
    """


link : String
link =
    """
    dark-gray
    dib
    dim
    f6 f5-l
    link
    """
