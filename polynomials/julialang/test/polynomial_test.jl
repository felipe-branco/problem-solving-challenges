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

  @testset "calcPolynomial((coeffient, value, power)::firstTermTuple, ... , (coeffient, value, power)::lastTermTuple)" begin
    # y = 4 + x^3 -2*x^2 + 3*x when x = 1
    @test calcPolynomial((4,1,0), (1,1,3), (-2,1,2), (3,1,1)) == 6
    @test calcPolynomial((8,1,0)) == 8
  end

end
