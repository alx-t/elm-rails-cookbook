module Models exposing (..)

import RemoteData exposing (WebData)

type alias RecipeId =
    Int

type alias Recipe =
    { id : RecipeId
    , title : String
    , description : String
    }

type alias Model =
    { recipes : WebData (List Recipe)
    }

initialModel : Model
initialModel =
    { recipes = RemoteData.Loading
    }
