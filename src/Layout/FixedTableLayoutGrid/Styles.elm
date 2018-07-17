module Layout.FixedTableLayoutGrid.Styles
    exposing
        ( darkDarkCol
        , darkLightCol
        , lightDarkCol
        , lightLightCol
        , row
        )


darkDarkCol : String
darkDarkCol =
    """
    bg-black
    dtc
    pv4
    tc
    white
    """


darkLightCol : String
darkLightCol =
    """
    bg-black-70
    dtc
    pv4
    tc
    white
    """


lightDarkCol : String
lightDarkCol =
    """
    bg-black-10
    dtc
    pv4
    tc
    """


lightLightCol : String
lightLightCol =
    """
    bg-black-05
    dtc
    pv4
    tc
    """


row : String
row =
    """
    dt
    dt--fixed
    """
