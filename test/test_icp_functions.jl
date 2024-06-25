using Random

@testset "associations" begin
    rng = MersenneTwister(420) # don't change
    sols = [[28, 31, 84, 55, 60, 60, 91, 24], [5, 75, 59, 5, 69, 4, 60, 5], [35, 80, 35, 35, 79, 79, 35, 35], [50, 94, 81, 94, 23, 12, 24, 74], [75, 66, 100, 46, 83, 66, 43, 65]]
    for i = 1:5
        θ = rand(rng)*2*pi-pi
        R = [cos(θ) -sin(θ); sin(θ) cos(θ)]
        t = randn(rng, 2)
        P = [randn(rng, 2) for i = 1:100]
        Q = [randn(rng, 2) for i = 1:8]
        point_associations = collect(1:8)
        num_changed = HW3.update_point_associations!(point_associations, Q, P, R, t)
        @test point_associations == sols[i]
    end
end

@testset "transforms" begin
    rng = MersenneTwister(420) # don't change
    Rs = [[-0.08515021099957454 0.9963681255272714; -0.9963681255272714 -0.08515021099957465], 
          [0.37448126787801994 -0.9272344795187836; 0.9272344795187847 0.374481267878021],
          [0.09018640979121945 0.99592490253481; -0.99592490253481 0.09018640979121934],
          [0.9673338788038522 -0.2535057532252354; 0.2535057532252358 0.9673338788038524],
          [-0.9999977340422608 -0.00212882839711126; 0.0021288283971112043 -0.9999977340422606]]
    ts = [[-0.13071378111360737, 0.3469391330817809],
          [0.09511781860280955, -0.4899535278433448],
          [-0.17614620955561944, 0.4678282039063645],
          [0.5313045428042191, -0.06200485086563551],
          [0.5490816787107007, -0.688561905279888]]
    errs = [2.1006944492522566,1.0278518077549832,1.121480069601088,2.7127159241568655,1.5304687495230773]
    for i = 1:5
        θ = rand(rng)*2*pi-pi
        R = [cos(θ) -sin(θ); sin(θ) cos(θ)]
        t = randn(rng, 2)
        P = [randn(rng, 2) for i = 1:100]
        Q = [randn(rng, 2) for i = 1:8]
        point_associations = rand(rng, 1:100,8)
        err = HW3.update_point_transform!(point_associations, Q, P, R, t)
        @test R ≈ Rs[i]
        @test t ≈ ts[i]
        @test err ≈ errs[i]
    end
end


