import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = 0, view = view, update = update }

type Msg = Increment | Decrement | Reset

update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1
    Reset ->
      0

view model =
  div [] [
    button [ onClick Decrement ] [ text "-" ],
    div [] [ text (toString model) ],
    button [ onClick Increment ] [ text "+" ],
    button [ onClick Reset ] [ text "reset" ]
  ]

