module Footer.InlineText.Styles exposing
    ( company
    , email
    , footer
    , paragraph
    , privacy
    , terms
    )


company : String
company =
    """
    dib
    mr4 mr5-ns
    """


email : String
email =
    link ++ "hover-green"


footer : String
footer =
    """
    bg-near-black
    ph4
    pv5 pv6-l
    white-80
    """


paragraph : String
paragraph =
    "f6"


privacy : String
privacy =
    link ++ "hover-gold"


terms : String
terms =
    link ++ "hover-light-purple"


link : String
link =
    """
    link
    white-80
    """
