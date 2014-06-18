-- | Functions to run outer layers of monadic stacks.
--
-- These are provided for convenience only; you can use the running
-- functions (like 'SL.runState') from the transformers' modules directly.
--
-- Note that reader and state runners have their arguments swapped around;
-- this makes it convenient to chain them.
module Control.Monad.Classes.Run
  ( -- * Identity
    run
    -- * Reader
  , runReader
    -- * State
  , runStateLazy
  , runStateStrict
  , evalStateLazy
  , evalStateStrict
  , execStateLazy
  , execStateStrict
    -- * Writer
  , runWriterStrict
  , evalWriterStrict
  , execWriterStrict
  , evalWriterWith
  , CustomWriterT(..)
    -- * Except
  , runExcept
  , runMaybe
    -- * Zoom
  , runZoom
  , ZoomT(..)
  ) where

import Data.Functor.Identity
import Control.Monad.Classes.Zoom
import Control.Monad.Classes.State
import Control.Monad.Classes.Writer
import Control.Monad.Classes.Reader
import Control.Monad.Classes.Except

run :: Identity a -> a
run = runIdentity
