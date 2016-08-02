module Main where
import           Maths

main :: IO ()
main = do
  putStrLn "enter a number:"
  n <- getLine
  let result = factorial (read n :: Int)
  putStrLn "the factorial of your number is:"
  print result
