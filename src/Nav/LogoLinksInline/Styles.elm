module Nav.LogoLinksInline.Styles exposing
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
    dtc
    dim
    link
    mid-gray
    v-mid
    w-25
    """


lastNavLink : String
lastNavLink =
    link


nav : String
nav =
    """
    dt
    border-box
    pa3 ph5-ns
    w-100
    """


navLink : String
navLink =
    link ++ "mr3 mr4-ns"


navLinks : String
navLinks =
    """
    dtc
    tr
    v-mid
    w-75
    """


link : String
link =
    """
    dark-gray
    dib
    dim
    f6 f5-ns
    link
    """
