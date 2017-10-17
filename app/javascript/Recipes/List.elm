module Recipes.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Recipe)
import RemoteData exposing (WebData)

view : WebData (List Recipe) -> Html Msg
view response =
    div []
        [ nav
        , maybeList response
        ]

maybeList : WebData (List Recipe) -> Html Msg
maybeList response =
    case response of
        RemoteData.NotAsked ->
            text ""
        RemoteData.Loading ->
            text "Loading..."
        RemoteData.Success recipes ->
            list recipes
        RemoteData.Failure error ->
            text (toString error)

nav : Html Msg
nav =
    div [ class "" ]
        [ div [ class "" ] [ text "Recipes" ] ]

list : List Recipe -> Html Msg
list recipes =
    div [ class "" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Id" ]
                    , th [] [ text "Title" ]
                    , th [] [ text "Description" ]
                    , th [] [ text "Actions" ]
                    ]
                ]
            , tbody [] (List.map recipeRow recipes)
            ]
        ]

recipeRow : Recipe -> Html Msg
recipeRow recipe =
    tr []
        [ td [] [ text (toString recipe.id) ]
        , td [] [ text recipe.title ]
        , td [] [ text recipe.description ]
        , td [] []
        ]
