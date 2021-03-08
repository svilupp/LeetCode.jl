@testset "239.sliding-window-maximum.jl" begin
    @test max_sliding_window([1,3,-1,-3,5,3,6,7], 3) == [3,3,5,5,6,7]
    @test max_sliding_window([1], 1) == [1]
    @test max_sliding_window([1,-1], 1) == [1,-1]
    @test max_sliding_window([9,11], 2) == [11]
    @test max_sliding_window([4,-2], 2) == [4]
    @test max_sliding_window([32, 61, 68, 8, 87, 7, 20, 8, 16, 32, 20, 85, 21, 90, 89, 7, 1, 27, 22, 10, 19, 93, 44, 22, 9, 62, 55, 58, 16, 9, 20, 40, 49, 69, 91, 85, 56, 98, 64, 2, 1, 60, 75, 100, 56, 63, 47, 79, 20, 94, 78, 58, 69, 39, 7, 75, 52, 65, 36, 3, 73, 11, 73, 26, 78, 20, 45, 71, 53, 63, 74, 61, 29, 38, 2, 20, 75, 56, 96, 94, 74, 20, 21, 59, 81, 2, 9, 60, 52, 85, 98, 86, 97, 6, 94, 76, 70, 21, 50, 4, 32, 87, 18, 6, 100, 100, 9, 13, 71, 44, 83, 67, 59, 13, 74, 44, 20, 16, 81, 51, 74, 1, 60, 86, 60, 40, 99, 10, 44, 74, 61, 86, 39, 34, 75, 34, 86, 49, 43, 57, 43, 43, 14, 79, 65, 10, 95, 7, 65, 4, 71, 9, 61, 88, 26, 50, 68, 5, 50, 37, 56, 38, 3, 63, 93, 16, 73, 26, 41, 36, 96, 48, 99, 79, 43, 16, 3, 24, 93, 29, 87, 81, 51, 5, 52, 30, 70, 17, 23, 75, 53, 70, 29, 24, 93, 77, 38, 51, 55, 71], 15) ==
    [90,90,90,90,90,90,90,93,93,93,93,93,93,93,93,93,93,93,93,93,93,93,91,98,98,98,98,98,98,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,94,94,94,94,94,94,78,78,78,78,78,78,78,78,78,78,78,78,78,78,96,96,96,96,96,96,96,96,96,96,96,96,98,98,98,98,98,98,98,98,98,98,98,98,98,98,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,83,83,83,86,86,86,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,86,86,86,86,86,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,88,88,88,93,93,93,93,93,93,96,96,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,93,93,93,93,93,93,87,93,93,93,93,93,93]
    @test max_sliding_window([77, 67, 24, 88, 14, 54, 1, 47, 15, 49, 44, 87, 46, 41, 8, 22, 51, 38, 51, 29], 5) == [88,88,88,88,54,54,49,87,87,87,87,87,51,51,51,51]
end