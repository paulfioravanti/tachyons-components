module Article.View exposing (view)

import Article.Feature.View as Feature
import Article.FullBleedBackground.View as FullBleedBackground
import Article.HeadlineTitleText.View as HeadlineTitleText
import Article.LargeTitleText.View as LargeTitleText
import Article.LeftTitle.View as LeftTitle
import Article.LeftTitleTopBorder.View as LeftTitleTopBorder
import Article.PhotoEssay.View as PhotoEssay
import Article.Route as Route exposing (Route)
import Article.SingleColumnLargeTitle.View as SingleColumnLargeTitle
import Article.TitleHighlightHeaderCover.View as TitleHighlightHeaderCover
import Article.TitleText.View as TitleText
import Article.TitleTextImage.View as TitleTextImage
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.Feature ->
            Feature.view

        Route.FullBleedBackground ->
            FullBleedBackground.view

        Route.HeadlineTitleText ->
            HeadlineTitleText.view

        Route.LargeTitleText ->
            LargeTitleText.view

        Route.LeftTitle ->
            LeftTitle.view

        Route.LeftTitleTopBorder ->
            LeftTitleTopBorder.view

        Route.PhotoEssay ->
            PhotoEssay.view

        Route.SingleColumnLargeTitle ->
            SingleColumnLargeTitle.view

        Route.TitleHighlightHeaderCover ->
            TitleHighlightHeaderCover.view

        Route.TitleText ->
            TitleText.view

        Route.TitleTextImage ->
            TitleTextImage.view
