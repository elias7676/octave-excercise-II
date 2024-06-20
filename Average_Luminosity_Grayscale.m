function grayscale(image_path)
  % This function implements different methods of grayscale conversion (average, luminosity, desaturation)
  % and applies them to a color image. It displays the original and grayscale images, and compares the results.

  % Read the original image
  original_img = imread(image_path);

  % Convert the image to double precision for calculations
  img = im2double(original_img);

  % Average method
  average_img = mean(img, 3);

  % Luminosity method
  luminosity_img = 0.2989 * img(:,:,1) + 0.5870 * img(:,:,2) + 0.1140 * img(:,:,3);

  % Display the original and grayscale images
  figure;
  subplot(2, 2, 1);
  imshow(original_img);
  title('Original Image');

  subplot(2, 2, 2);
  imshow(average_img);
  title('Average Grayscale');

  subplot(2, 2, 3);
  imshow(luminosity_img);
  title('Luminosity Grayscale');

end