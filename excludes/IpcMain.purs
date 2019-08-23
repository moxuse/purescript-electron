module Electron.IpcMain (on, once, removeListener, removeAllListeners, removeAllChannelListeners, sender) where

import Prelude (Unit)
import Effect(Effect)
import Electron.Event (Event)
import Electron.Types (Channel, Listener)
import Electron.BrowserWindow (WebContents)


-- | Listens to channel, when a new message arrives the listener is called.
-- |
-- | [Official Electron documentation](http://electron.atom.io/docs/api/ipc-main/#ipcmainonchannel-listener)
foreign import on :: Channel -> Listener  -> Effect Unit


-- | Adds a one time listener function for the event.
-- | This listener is invoked only the next time a message is sent to channel,
-- | after which it is removed.
-- |
-- | [Official Electron documentation](http://electron.atom.io/docs/api/ipc-main/#ipcmainoncechannel-listener)
foreign import once :: Channel -> Listener  -> Effect Unit


-- | Removes the specified listener from the listener array for the
-- | specified channel.
-- |
-- | [Official Electron documentation](http://electron.atom.io/docs/api/ipc-main/#ipcmainremovelistenerchannel-listener)
foreign import removeListener :: Channel -> Listener  -> Effect Unit


-- | Removes all listeners for the specified channel.
foreign import removeAllChannelListeners :: Channel -> Effect Unit


-- | Removes all listeners.
-- |
-- | [Official Electron documentation](http://electron.atom.io/docs/api/ipc-main/#ipcmainremovealllistenerschannel)
foreign import removeAllListeners :: Effect Unit


-- | Event object
foreign import sender :: forall e. Event -> Effect WebContents
