function [estimates, variance, weights] = ordinary_kriging(locations, values,...
                                                        estimates_locations, covariance, parameters)

% Build covariance matrices
% I am adding a small amount of noise at the diagonal 
% to help the inversion of badly-conditioned Gaussian matrices.
% This is the so-called "nugget regularization"
C = covariance(parameters, squareform(pdist(locations))) + 0.0001 * diag(rand(length(values), 1));
Ce = covariance(parameters, pdist2(locations, estimates_locations));
[n, m] = size(Ce);

% Augment matrices to account for Laplace multiplier
% Add a row of ones at the bottom, and a column of ones and a zero at right
C = [[C, ones(n, 1)]; [ones(1, n), 0]];
Ce = [Ce; ones(1, m)];

% Solve, estimate and compute variance
weights = C\Ce;
estimates = weights(1:end-1, :)' * values;
variance = C(1, 1) - diag(weights' * Ce);