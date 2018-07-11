module Article.View exposing (view)

import Article.Route
    exposing
        ( Route
            ( Feature
            , FullBleedBackground
            , HeadlineTitleText
            , LargeTitleText
            , LeftTitle
            , LeftTitleTopBorder
            , PhotoEssay
            , SingleColumnLargeTitle
            , TitleHighlightHeaderCover
            , TitleText
            , TitleTextImage
            )
        )
import Article.Feature.View as Feature
import Article.FullBleedBackground.View as FullBleedBackground
import Article.HeadlineTitleText.View as HeadlineTitleText
import Article.LargeTitleText.View as LargeTitleText
import Article.LeftTitle.View as LeftTitle
import Article.LeftTitleTopBorder.View as LeftTitleTopBorder
import Article.PhotoEssay.View as PhotoEssay
import Article.SingleColumnLargeTitle.View as SingleColumnLargeTitle
import Article.TitleHighlightHeaderCover.View as TitleHighlightHeaderCover
import Article.TitleText.View as TitleText
import Article.TitleTextImage.View as TitleTextImage
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Feature ->
            Feature.view

        FullBleedBackground ->
            FullBleedBackground.view

        HeadlineTitleText ->
            HeadlineTitleText.view

        LargeTitleText ->
            LargeTitleText.view

        LeftTitle ->
            LeftTitle.view

        LeftTitleTopBorder ->
            LeftTitleTopBorder.view

        PhotoEssay ->
            PhotoEssay.view

        SingleColumnLargeTitle ->
            SingleColumnLargeTitle.view

        TitleHighlightHeaderCover ->
            TitleHighlightHeaderCover.view

        TitleText ->
            TitleText.view

        TitleTextImage ->
            TitleTextImage.view
