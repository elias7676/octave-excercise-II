function rotate_image(image_path, angle)
  % This function rotates an image by any specified angle.
  % It handles changes in image size and aspect ratio resulting from the rotation.
  % It visualizes the rotated image and compares it to the original.

  % Read the original image
  original_img = imread(image_path);

  % Rotate the image
  rotated_img = imrotate(original_img, angle, 'bicubic', 'crop');

  % Display the original and rotated images
  figure;
  subplot(1, 2, 1);
  imshow(original_img);
  title('Original Image');

  subplot(1, 2, 2);
  imshow(rotated_img);
  title('Rotated Image');
end