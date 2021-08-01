# Henons-Chaotic-Map-Encryption

HENON.M Encrypt an image using Henons' chaotic map

ENCIMG = HENON(IMG, KEY) encrypts input grayscale IMG using Henon map based upon user given KEY.

Example
-------
img = imread('cameraman.tif');

key = input(' Enter the encryption key: ');

encrypImg = henon(img, key);

figure

montage({img, encrypImg})

title('Original image(left) and Encrypted image(right)');


Reference
---------
Hénon, M., 1976. A two-dimensional mapping with a strange attractor.

In The Theory of Chaotic Attractors (pp. 94-102). Springer, New York,

NY.


Written by: Subhadeep Koley

CC BY-NC-ND license 2021


---------------------------------------------------------------------

IHENON2.M Decrypt an image using Henons' chaotic map

DEIMG = IHENON(IMG, KEY) decrypts input grayscale IMG using Henon map based upon user given KEY.

Example
-------
img = imread('cameraman.tif');

key = input(' Enter the encryption key: ');

encrypImg = henon(img, key);

key = input(' Enter the decryption key: ');

decrypImg = henon(encrypImg, key);

figure

montage({encrypImg, decrypImg})

title('Encrypted image(left) and Decrypted image(right)');


Reference
---------
Hénon, M., 1976. A two-dimensional mapping with a strange attractor.

In The Theory of Chaotic Attractors (pp. 94-102). Springer, New York,

NY.

Written by: Subhadeep Koley

CC BY-NC-ND license 2021
