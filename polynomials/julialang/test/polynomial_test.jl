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

  @testset "calcTerm(coeffient, (value, power))" begin
    @test calcTerm(0, (2, 34)) == 0
    @test calcTerm(-1, (2, 2)) == -4
    @test calcTerm(3, (1, 200)) == 3
  end

end