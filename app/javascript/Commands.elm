module Commands exposing (..)

import Http
import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)
import Msgs exposing (Msg)
import Models exposing (RecipeId, Recipe)
import RemoteData

fetchRecipes : Cmd Msg
fetchRecipes =
    Http.get fetchRecipesUrl recipesDecoder
        |> RemoteData.sendRequest
        |> Cmd.map Msgs.OnFetchRecipes

fetchRecipesUrl : String
fetchRecipesUrl =
    "http://localhost:5000/recipes"

recipesDecoder : Decode.Decoder (List Recipe)
recipesDecoder =
    Decode.list recipeDecoder

recipeDecoder : Decode.Decoder Recipe
recipeDecoder =
    decode Recipe
        |> required "id" Decode.int
        |> required "title" Decode.string
        |> required "description" Decode.string
