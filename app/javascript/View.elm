module View exposing (..)

import Html exposing (Html, div, text)
import Msgs exposing (Msg)
import Models exposing (Model)
import Recipes.List
import Html.Attributes exposing (href, class, style)

type alias Mdl =
    Material.Model

view : Model -> Html Msg
view model =
    div [ style [ ( "padding", "2rem" ) ] ]
        [ nav
        , page model
        ]
        -- |> Material.Scheme.top

nav : Html Msg
nav =
    div [ class "" ]
        [ div [ class "" ] [ text "Recipes" ] ]

page : Model -> Html Msg
page model =
    Recipes.List.view model.recipes
