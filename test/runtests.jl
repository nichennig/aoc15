using aoc15
using Test

@testset "memoryGameTests" begin
    
    @testset "startingListIsSpoken" begin
    # Write your tests here.
        input = [4,1]
        @test aoc15.spoken(input, 1) == 4
        @test aoc15.spoken(input, 2) == 1 
    end

    @testset "newNumberWasAdded" begin
        input = [0,3,6]
        @test aoc15.spoken(input, 4) == 0
        @test aoc15.spoken(input, 8) == 0
        @test aoc15.spoken(input, 10) == 0
    end

    @testset "oldNumberIsFound" begin
        input = [0,3,6]
        @test aoc15.spoken(input, 5) == 3
        @test aoc15.spoken(input, 6) == 3
        @test aoc15.spoken(input, 7) == 1
        @test aoc15.spoken(input, 9) == 4
    end

    @testset "2020Examples" begin
        @test aoc15.spoken([0,3,6], 2020) == 436
        @test aoc15.spoken([1,3,2], 2020) == 1
        @test aoc15.spoken([2,1,3], 2020) == 10
        @test aoc15.spoken([1,2,3], 2020) == 27
        @test aoc15.spoken([2,3,1], 2020) == 78
        @test aoc15.spoken([3,2,1], 2020) == 438
        @test aoc15.spoken([3,1,2], 2020) == 1836
    end

    @testset "30000000Examples" begin
        @test aoc15.spoken([0,3,6], 30000000) == 175594
        @test aoc15.spoken([1,3,2], 30000000) == 2578
        @test aoc15.spoken([2,1,3], 30000000) == 3544142
        @test aoc15.spoken([1,2,3], 30000000) == 261214
        @test aoc15.spoken([2,3,1], 30000000) == 6895259
        @test aoc15.spoken([3,2,1], 30000000) == 18
        @test aoc15.spoken([3,1,2], 30000000) == 362
    end

end
