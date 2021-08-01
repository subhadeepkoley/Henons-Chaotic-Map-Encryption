function encImg = henon(img, key)
%HENON Encrypt an image using Henons' chaotic map
%   ENCIMG = HENON(IMG, KEY) encrypts input grayscale IMG using Henon map
%   based upon user given KEY.
%
%   Example
%   -------
%   img = imread('cameraman.tif');
%   key = input(' Enter the encryption key: ');
%   encrypImg = henon(img, key);
%   figure
%   montage({img, encrypImg})
%   title('Original image(left) and Encrypted image(right)');
%
%   Reference
%   ---------
%   Hénon, M., 1976. A two-dimensional mapping with a strange attractor.
%   In The Theory of Chaotic Attractors (pp. 94-102). Springer, New York,
%   NY.

% Written by: Subhadeep Koley
% CC BY-NC-ND license 2021

if ~ismatrix(img)
    error('Input image must be a 2D grayscale image.');
end

[row, col] = size(img);
itr = (row*col);

% Initial condition
x = zeros(1, itr);
y = zeros(1, itr);
a = 1.4;
b = 0.3;

% Define henon attractor
for i = 2:itr
    x(i) = 1 - a*(x(i-1)^2) + y(i-1);
    y(i) = b*x(i-1);
end

% Reshape the attractors to be 2D
xRes = reshape(x, [row, col]);
yRes = reshape(y, [row, col]);

% Create random matrix
randMat = xRes.*yRes;

% Rounding of random matrix
roundRandMat = floor(mod((randMat * key), 256));

% Perform XOR(modulo) encryption
encImg = bitxor(im2uint8(img), uint8(roundRandMat));
end