@testset "1074.number-of-submatrices-that-sum-to-target.jl" begin
    @test num_submatrix_sum_target(hcat([[0, 1, 0], [1, 1, 1], [0, 1, 0]]...), 0) == 4
    @test num_submatrix_sum_target(hcat([[1, -1], [-1, 1]]...), 0) == 5
    @test num_submatrix_sum_target(hcat([[904]]...), 0) == 0
    @test num_submatrix_sum_target(hcat([[17, 6, -41, -45, -23, 38, -41, 49, 2, 26, -9, -17,
                                          -47, 18, -43, -28, 4, 1, 15, 19, -32, -45, 36,
                                          -30, -35, 37, -21, -6, 25, 8],
                                         [-12, 9, -44, -21, -30, -35, -31, -1, -32, 5, 25,
                                          44, 30, -25, 15, 25, -35, -29, 36, 17, -47, -33,
                                          -49, -48, -33, -44, 3, 29, 5, 8],
                                         [12, -21, -4, -48, -34, 30, 27, 20, 38, 9, -34, 47,
                                          45, 9, -33, -46, 38, -4, 47, -17, 39, -43, -30,
                                          32, 8, 37, -15, 40, 15, 21],
                                         [-9, -44, 4, 47, 24, -35, -20, -47, -25, -33, -33,
                                          -37, -9, 25, -7, -41, -31, -16, 23, -15, -7, 50,
                                          -19, -49, 3, 37, 11, -42, -34, -30],
                                         [12, 45, -28, -30, 40, 2, -22, 4, 39, 11, 46, -28,
                                          -39, 17, -42, -23, -40, 1, 9, 29, 7, -47, -2, 5,
                                          5, 11, -41, -39, -18, 10],
                                         [-44, -46, 48, 23, 49, 38, 10, 22, 29, 43, 5, 32,
                                          0, -46, 39, -30, -33, -42, -15, -11, 16, 46, -29,
                                          16, 25, 46, 35, 3, 2, -41],
                                         [-8, 30, -42, 37, 45, -28, -35, -2, 48, -47, -26,
                                          -45, 12, 20, 35, -39, -36, 9, -31, -3, 49, -24,
                                          -8, 14, 22, -39, 33, -31, -5, 11],
                                         [-30, 16, -23, -17, 15, 24, 18, 6, 31, 19, 30, -36,
                                          25, -6, 44, 1, -10, -12, -6, 31, 35, -32, 13, 34,
                                          -45, 29, -33, -8, 24, -38],
                                         [-34, -2, 24, 30, 21, -22, -5, 5, -1, 32, -37, 36,
                                          19, 42, 5, -24, 3, 49, 0, 16, -22, -30, -8, -4,
                                          18, 13, 38, -3, -39, -21],
                                         [40, -41, -33, 39, -14, -48, 49, -22, 9, 21, -9,
                                          46, 24, 32, 28, 37, 12, -15, 13, 0, -11, 42, 41,
                                          27, -42, 14, 18, -4, 46, 33],
                                         [20, -3, -41, -28, 5, 10, 19, 48, 24, 29, 47, -21,
                                          -1, -11, -41, 37, -33, 13, -5, 36, -39, 22, -32,
                                          44, -29, 17, 5, 36, -40, 48],
                                         [-32, -44, 43, 28, 26, -41, 4, 21, 1, 11, 3, -15,
                                          -36, -10, -13, -17, -11, -7, 32, -40, -13, -30, 7,
                                          21, -28, 29, 24, -17, -9, -33],
                                         [-19, 6, -24, -45, -9, -21, -45, -29, -11, 46, -15,
                                          8, 5, 14, 40, 10, 0, -12, -18, -10, 17, -45, 18,
                                          37, 7, 19, -6, 21, -11, -1],
                                         [40, -42, 0, 13, -12, -49, -42, 46, -13, -21, -16,
                                          -34, -15, 26, 48, -22, -32, 10, -3, 16, 40, 18,
                                          -35, 44, 26, -34, 30, -19, -44, -5],
                                         [24, 3, -41, 29, -46, -3, -30, 41, -33, -3, -41,
                                          -38, 34, -43, 41, -37, 6, 39, -3, 47, -50, -12,
                                          -20, 44, -26, -30, 36, 19, 42, -40],
                                         [49, 33, 26, -35, 43, 50, 15, -19, -27, -37, -2,
                                          16, 35, -16, 11, -30, -7, 34, -32, -42, -14, 0,
                                          -3, -29, 35, 19, 32, 14, 44, 8],
                                         [2, -22, -39, 19, 19, 22, -45, -19, 1, -22, -6, 33,
                                          -16, -34, 33, 14, 30, -11, 22, -50, -24, 24, 22,
                                          -23, 24, 2, 17, 46, 31, 45],
                                         [48, -49, 15, 3, 49, 11, 11, 6, -18, 24, -5, 10,
                                          37, 42, 41, 2, -5, 39, -6, 10, 42, -13, -11, -19,
                                          26, -47, -30, -26, 33, 3],
                                         [-20, -42, 37, 12, 10, 11, 26, 34, -15, -20, -9,
                                          -32, -11, -39, -8, -19, -36, -39, -5, 19, 47, 43,
                                          19, 39, -6, -2, -31, 13, 34, -4],
                                         [26, -36, 28, 3, 35, -47, 5, -38, -10, 25, -8, -47,
                                          -29, 43, 1, -16, 20, 12, 19, 35, 39, 24, 47, 47,
                                          -8, 3, -2, -1, -39, -4],
                                         [-15, 4, 29, 12, -23, 11, -4, 48, -7, -3, -29, -10,
                                          -45, 42, -26, -21, -25, -46, 10, 6, 20, 40, -8, 7,
                                          5, -38, -23, -33, 11, 16],
                                         [6, -10, -40, -35, -38, 39, -20, 43, -17, -43, 15,
                                          19, 4, -23, 42, 15, 10, -47, -5, -1, -30, 14, 47,
                                          -46, 11, -10, -9, 28, -46, -23],
                                         [2, -17, -26, 38, -50, 43, 25, -4, 5, 30, 21, 34,
                                          -50, -31, -20, -41, -25, 22, 23, 34, 15, -43, 20,
                                          -6, -14, -21, -47, -12, -27, -27],
                                         [-44, 27, -46, -45, -14, -19, 2, -34, -36, 11, 23,
                                          39, 9, -49, 47, 0, 11, -1, 27, 44, -28, 29, -46,
                                          -36, 24, 1, 45, -25, 11, 27],
                                         [-41, -39, 19, 3, 39, -9, -50, 31, 31, 33, 21, -30,
                                          12, -39, 45, -40, 13, 21, 41, 20, 31, -2, -21, 50,
                                          43, 21, 36, 0, -7, -28],
                                         [37, 46, -14, -34, -46, 35, 3, 48, 37, -38, -10,
                                          -24, -5, 42, 11, -47, 2, 9, 49, -26, -41, -33,
                                          -42, 32, 33, 36, -32, 47, 13, -49],
                                         [45, -45, -38, 27, -45, -19, -17, 35, 6, -33, 47,
                                          0, 18, -6, 16, 19, -17, -43, 6, 41, -31, -32, 11,
                                          -11, -50, 29, -33, 2, -46, 44],
                                         [32, -42, -7, -20, 9, 42, -37, 10, -41, 1, -37,
                                          -10, -24, 19, 2, -39, -18, 41, -18, 7, 44, 30, 7,
                                          -40, 23, -19, 21, -45, -6, 26],
                                         [28, 22, 1, -21, 46, 28, -43, 16, -13, -47, 33, 40,
                                          24, -8, -27, -42, -17, -34, 44, -5, 14, 28, -4,
                                          36, 47, -43, 1, 7, -14, -18],
                                         [-14, 46, 5, -40, 10, -13, 20, 39, -9, -32, -46,
                                          -7, -7, 24, 3, 36, -8, 10, 11, 35, -37, -46, 46,
                                          35, 49, -43, -25, -36, -28, -13]]...), 5) == 476
end

a = rand(-50:50, 100, 100)
num_submatrix_sum_target(a, 5)