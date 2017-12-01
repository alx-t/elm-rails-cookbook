module Recipes.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (Msg)
import Models exposing (Recipe)
import RemoteData exposing (WebData)

-- black : Options.Property c m
-- black =
--   Color.text Color.black

view : WebData (List Recipe) -> Html Msg
view response =
    div []
        [ maybeList response
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

list : List Recipe -> Html Msg
list recipes =
    div [ class "" ] ( List.map recipeRow recipes )

recipeRow : Recipe -> Html Msg
recipeRow recipe =
    -- Card.view
    --     [ css "width" "400px" ]
    --     [ Card.title
    --         [ css "align-content" "flex-start"
    --         , css "flex-direction" "row"
    --         , css "align-items" "flex-start"
    --         , css "justify-content" "space-between"
    --         ]
    --         [ Options.div
    --             []
    --             [ Card.head [ black ] [ text recipe.title ]
    --             , Card.subhead [ black ] [ text recipe.description ]
    --             ]
    --         , Options.img
    --             [ Options.attribute <| Html.Attributes.src "images/001.jpg"
    --             , css "height" "96px"
    --             , css "width" "96px"
    --             ]
    --             []
    --         ]
    --     ]
