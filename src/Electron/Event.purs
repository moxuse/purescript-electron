module Electron.Event (Event, preventDefault, stopPropagation) where

import Prelude (Unit)
import Effect (Effect)

foreign import data Event :: Type

foreign import preventDefault :: forall e. Event -> Effect Unit

foreign import stopPropagation :: forall e. Event -> Effect Unit
