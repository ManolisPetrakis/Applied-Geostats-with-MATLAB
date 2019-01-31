function [variogram, bin_centers, counts] = sample_variogram(positions, values, bin_edges)

% Pair-wise distances
d = pdist(positions);

% Pair-wise squared differences of values
squared_differences = pdist(values, 'squaredeuclidean');

% Compute bin centers from bin edges
bin_centers = bin_edges(1:end-1) + diff(bin_edges)/2;

% count is the number of pair-wise distances d within each bin range
% ind indicates the bin number that each entry in d sorts into
[counts, ind] = histc(d, bin_edges);

n_bins = length(bin_centers);
variogram = zeros(1, n_bins);

% Compute sample variogram valuue at each bin center
for i = 1:n_bins
    variogram(i) = 0.5 * mean(squared_differences(ind==i));
end