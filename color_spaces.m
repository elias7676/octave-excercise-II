pkg load image;

function color_spaces(image_path)
  % This function converts an image to different color spaces (grayscale, HSV)
  % and applies image processing tasks such as edge detection and segmentation.

  % Load the image
  img = imread(image_path);

  % Convert the image to grayscale
  gray_img = rgb2gray(img);

  % Convert the image to HSV
  hsv_img = rgb2hsv(img);

  % Apply edge detection to the grayscale image
  edges_gray = edge(gray_img, 'Sobel');

  % Apply edge detection to the HSV image
  edges_hsv = edge(rgb2gray(hsv_img), 'Sobel');

  % Display the original image, grayscale image, HSV image, and edge detection results
  figure;
  subplot(2, 3, 1);
  imshow(img);
  title('Original Image');

  subplot(2, 3, 2);
  imshow(gray_img);
  title('Grayscale Image');

  subplot(2, 3, 3);
  imshow(hsv_img);
  title('HSV Image');

  subplot(2, 3, 5);
  imshow(edges_gray);
  title('Edges of Grayscale Image');

  subplot(2, 3, 6);
  imshow(edges_hsv);
  title('Edges of HSV Image');

  % Apply segmentation to the grayscale image
  seg_gray = im2bw(gray_img, graythresh(gray_img));

  % Apply segmentation to the HSV image
  seg_hsv = im2bw(rgb2gray(hsv_img), graythresh(rgb2gray(hsv_img)));

  % Display the segmentation results
  figure;
  subplot(1, 3, 1);
  imshow(img);
  title('Original Image');

  subplot(1, 3, 2);