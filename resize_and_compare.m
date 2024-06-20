function resize_and_compare_image(image_path, new_width)
  % This function resizes an image to specified dimensions while maintaining aspect ratio.
  % It displays the resized image and compares it to the original image in terms of quality and resolution.

  % Read the original image
  original_img = imread(image_path);

  % Get the original image dimensions
  [orig_height, orig_width, ~] = size(original_img);

  % Calculate the new height while maintaining the aspect ratio
  new_height = round((new_width / orig_width) * orig_height);

  % Resize the image
  resized_img = imresize(original_img, [new_height new_width]);

  % Display the original and resized images
  figure;
  subplot(1, 2, 1);
  imshow(original_img);
  title('Original Image');

  subplot(1, 2, 2);
  imshow(resized_img);
  title('Resized Image');

  % Compare the original and resized images in terms of quality and resolution
  fprintf('Original Image Dimensions: %d x %d\n', orig_width, orig_height);
  fprintf('Resized Image Dimensions: %d x %d\n', new_width, new_height);

  % Calculate and display the PSNR (Peak Signal-to-Noise Ratio) between the original and resized images
  psnr_value = psnr(resized_img, original_img);
  fprintf('PSNR between Original and Resized Image: %f dB\n', psnr_value);
end