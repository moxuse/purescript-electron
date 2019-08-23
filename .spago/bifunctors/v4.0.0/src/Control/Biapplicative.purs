module Control.Biapplicative where

import Control.Biapply (class Biapply)

-- | `Biapplicative` captures type constructors of two arguments which support lifting of
-- | functions of zero or more arguments, in the sense of `Applicative`.
class Biapply w <= Biapplicative w where
  bipure :: forall a b. a -> b -> w a b
