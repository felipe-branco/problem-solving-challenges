using Test

include("../polynomial.jl")

@testset "Polynomial result" begin
  @testset "nthPower(x, power)" begin
    @test nthPower(1,1000) == 1
    @test nthPower(2,3) == 8
    @test nthPower(10,3) == 1000
    @test_throws DomainError(-3, "argument must be nonnegative") nthPower(10,-3)
    @test nthPower(10,0) == 1
  end

end