@testset "1105.filling-bookcase-shelves.jl" begin
    @test min_height_shelves([[1,1],[2,3],[2,3],[1,1],[1,1],[1,1],[1,2]], 4) == 6
    @test min_height_shelves([[1,3],[2,4],[3,2]], 6) == 4
    @test min_height_shelves([[17, 20], [9, 15], [4, 9], [20, 20], [11, 9], [15, 5], [4, 15], [7, 16], [8, 1], [3, 19], [11, 1], [17, 15], [20, 16], [7, 20], [11, 2], [5, 18], [1, 20], [16, 15], [10, 7], [16, 4]], 20) == 196
end