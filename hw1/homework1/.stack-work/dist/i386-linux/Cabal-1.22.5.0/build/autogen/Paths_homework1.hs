module Paths_homework1 (
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

bindir     = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw1/.stack-work/install/i386-linux/lts-5.8/7.10.3/bin"
libdir     = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw1/.stack-work/install/i386-linux/lts-5.8/7.10.3/lib/i386-linux-ghc-7.10.3/homework1-0.1.0.0-HJMcIzX2EUv6SSsk04grWt"
datadir    = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw1/.stack-work/install/i386-linux/lts-5.8/7.10.3/share/i386-linux-ghc-7.10.3/homework1-0.1.0.0"
libexecdir = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw1/.stack-work/install/i386-linux/lts-5.8/7.10.3/libexec"
sysconfdir = "/home/yasina/\1044\1086\1082\1091\1084\1077\1085\1090\1099/University/ThirdCourse/II/Haskell/homeworks/hw1/.stack-work/install/i386-linux/lts-5.8/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "homework1_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "homework1_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "homework1_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "homework1_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "homework1_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
