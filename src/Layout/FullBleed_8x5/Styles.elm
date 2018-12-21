module Layout.FullBleed_8x5.Styles exposing
    ( aspectRatio
    , formatting
    , image
    , main_
    )


aspectRatio : String
aspectRatio =
    """
    aspect-ratio
    aspect-ratio--8x5
    """


formatting : String
formatting =
    """
    fl
    w-50 w-third-m w-25-ns
    """


image : String
image =
    """
    aspect-ratio--object
    bg-center
    cover
    """


main_ : String
main_ =
    """
    cf
    w-100
    """
