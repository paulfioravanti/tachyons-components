module Nav.MinimalSignUp.Styles exposing
    ( image
    , imageLink
    , nav
    , navLink
    , navLinks
    , signUpLink
    )


image : String
image =
    """
    dib
    h1
    w1
    """


imageLink : String
imageLink =
    """
    flex
    hover-white
    items-center
    link
    no-underline
    pa3
    white-70
    """


nav : String
nav =
    """
    b--white-10
    bb
    flex
    justify-between
    """


navLink : String
navLink =
    """
    dib
    dim
    f6
    link
    mr3 mr4-ns
    white
    """


navLinks : String
navLinks =
    """
    flex
    flex-grow
    items-center
    pa3
    """


signUpLink : String
signUpLink =
    """
    b--white-20
    ba
    bg-animate
    br-pill
    dib
    f6
    hover-bg-white
    hover-black
    no-underline
    ph4
    pv2
    white
    """
