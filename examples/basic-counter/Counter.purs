module BasicExample.Counter where

import Prelude 
import Pux.Html 
import Pux.Html.Events 

data Action = Increment | Decrement 

type State = Int

update :: Action -> State -> State
update Increment count = count + 1
update Decrement count = count - 1

view :: State -> Html Action
view count =
  div
    []
    [ button [ onClick (const Increment) ] [ text "Increment" ]
    , span [] [ text (show count) ]
    , button [ onClick (const Decrement) ] [ text "Decrement" ]
    ]
