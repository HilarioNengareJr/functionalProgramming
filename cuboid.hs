--cuboid calculation using haskell
briefHistory = putStrLn "\t\t\t\t\tAccording To Wikipedia\n\nIn geometry a cuboid is a hexahedron a six-faced solid. Its faces are quadrilaterals. 'Cuboid' means 'like a cube' in the sense that by adjusting the length of the edges or the angles between edges and faces a cuboid can be transformed into a cube. In math language a cuboid is convex polyhedron whose polyhedral graph is the same as that of a cube.Special cases are a cube, with 6 squares as faces, a rectangular prism, rectangular cuboid or rectangular box, with 6 rectangles as faces, for both, cube and rectangular prism, adjacent faces meet in a right angle"

surfaceArea w h l = (2 *) $ (w * l) + (h * l) + (w * h)

volume w h l = w * h * l

spaceDiagonal w h l = (l^2) + (w^2) + (h^2)

lateralArea w h l = (2 * h *) $ w + l


prompt = putStrLn "\nPlease enter the preferred action:\n1. calculate surface area \n2. calculate volume \n3. calculate space diagonal\n4. calculate lateral area\nChoice"


main :: IO()
main = do
    briefHistory
    prompt
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

    if ch == "1"
      then print $ volume w h l
    else if ch == "2"
      then print $ surfaceArea w h l
    else if ch == "3"
      then print $ spaceDiagonal w h l
    else if ch == "4"
      then print $ lateralArea w h l
    else putStrLn("No such Choice")
    
    
