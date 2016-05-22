module Paths_homework4 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw4/homework4/.stack-work/install/i386-linux/lts-5.16/7.10.3/bin"
libdir     = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw4/homework4/.stack-work/install/i386-linux/lts-5.16/7.10.3/lib/i386-linux-ghc-7.10.3/homework4-0.1.0.0-6STs6jvMFJb678rFRZqL7H"
datadir    = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw4/homework4/.stack-work/install/i386-linux/lts-5.16/7.10.3/share/i386-linux-ghc-7.10.3/homework4-0.1.0.0"
libexecdir = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw4/homework4/.stack-work/install/i386-linux/lts-5.16/7.10.3/libexec"
sysconfdir = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw4/homework4/.stack-work/install/i386-linux/lts-5.16/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "homework4_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "homework4_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "homework4_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "homework4_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "homework4_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
