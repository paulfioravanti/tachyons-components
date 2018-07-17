module Layout.FullBleed16x9.Styles
    exposing
        ( aspectRatio
        , formatting
        , image
        , main_
        )


aspectRatio : String
aspectRatio =
    """
    aspect-ratio
    aspect-ratio--16x9
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
