--cuboid calculation using haskell

surfaceArea w h l = (2 *) $ (w * l) + (h * l) + (w * h)

volume w h l = w * h * l

spaceDiagonal w h l = sqrt $ l^2 + w^2 + h^2

main :: IO()
main = do

    putStrLn "\nPlease enter the preferred action:\n1. calculate surface area \n2. calculate volume \n3. calculate space diagonal\n "
    putStrLn "Choice"
    ch <- getLine
    putStrLn "width: "
    a  <- getLine
    putStrLn "height: "
    b <- getLine
    putStrLn "length: "
    c <- getLine
    let w = (read a :: Int)
    let h = (read b :: Int)
    let l = (read c :: Int)

    print $ volume w h l

    
    
