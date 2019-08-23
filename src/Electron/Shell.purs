module Electron.Shell
  ( showItemInFolder
  , openItem
  , openExternal
  , moveItemToTrash
  , beep
  ) where

import Prelude (Unit)
import Effect (Effect)

-- | Show the given file in a file manager. If possible, select the file.
foreign import showItemInFolder :: forall e. String -> Effect Unit

-- | Open the given file in the desktop's default manner.
foreign import openItem :: forall e. String -> Effect Unit

-- | Open the given external protocol URL in the desktop's default manner.
-- | (For example, mailto: URLs in the user's default mail agent.)
foreign import openExternal :: forall e. String -> Effect Unit

-- | Move the given file to trash and returns a boolean status for the operation.
foreign import moveItemToTrash :: forall e. String -> Effect Boolean

-- | Play the beep sound.
foreign import beep :: forall e. Effect Unit
