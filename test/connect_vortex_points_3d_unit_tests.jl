using VortexDistributions, JLD2, Test

@load joinpath(@__DIR__, "box_vorts.jld2") psi_tubes1 X

psi = psi_tubes1

N = 4;

vorts_3d = find_vortex_points_3d(psi, X, N) ;

vorts_class = connect_vortex_points_3d(vorts_3d, X, 0., N, true);

v_sort = sort_classified_vorts_3d(vorts_class, vorts_3d, X);

typeof(vorts_class)

typeof(v_sort)