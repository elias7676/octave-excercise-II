pkg load image;

function color_space_comparison(rgb_image_path, cmyk_image_path)
  % This function loads images with different color spaces (RGB, CMYK) and displays them.
  % It compares how different color spaces affect the appearance and processing of images.

  % Load the RGB image
  rgb_img = imread(rgb_image_path);

  % Load the CMYK image and convert it to RGB for display
  cmyk_img = imread(cmyk_image_path);
  cmyk_img_rgb = im2uint8(applycform(im2double(cmyk_img), makecform('cmyk2srgb')));

  % Display the images
  figure;
  subplot(1, 2, 1);
  imshow(rgb_img);
  title('RGB Image');

  subplot(1, 2, 2);
  imshow(cmyk_img_rgb);
  title('CMYK Image (displayed in RGB)');

  % Compare the images
  fprintf('Size of RGB image: %d x %d x %d\n', size(rgb_img));
  fprintf('Size of CMYK image: %d x %d x %d\n', size(cmyk_img));
end