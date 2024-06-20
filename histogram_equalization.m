pkg load image;

function enhanced_image = histogram_equalization(image_path)
  % This function applies histogram equalization to an image.

  % Load the image
  img = imread(image_path);

  % Convert the image to grayscale if it is not
  if size(img, 3) == 3
    img = rgb2gray(img);
  end

  % Apply histogram equalization
  enhanced_img = histeq(img);

  % Display the original and enhanced images
  figure;
  subplot(1, 2, 1);
  imshow(img);
  title('Original Image');

  subplot(1, 2, 2);
  imshow(enhanced_img);
  title('Enhanced Image with Histogram Equalization');

  return enhanced_img;
end