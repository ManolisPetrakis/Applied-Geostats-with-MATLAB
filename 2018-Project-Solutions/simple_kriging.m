function [estimates, variance, weights] = simple_kriging(locations, values,...
                                                        estimates_locations, covariance, parameters)

% Build covariance matrices
% I am adding a small amount of noise at the diagonal
% to help the inversion of badly-conditioned Gaussian matrices
C = covariance(parameters, squareform(pdist(locations))) + 0.0001 * diag(rand(length(values),1));
Ce = covariance(parameters, pdist2(locations, estimates_locations));

% Solve, estimate and compute variance
weights = C\Ce;
estimates = weights' * values;
variance =  C(1, 1) - diag(weights' * Ce);