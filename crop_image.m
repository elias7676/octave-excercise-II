function cropped_img = crop_image(image_path, top_left, bottom_right)
  % This function crops an image to a specific region of interest.
  % It takes the coordinates of the top-left and bottom-right corners of the crop region as input and creates a new image.

  % Read the original image
  original_img = imread(image_path);

  % Calculate the width and height of the crop region
  width = bottom_right(2) - top_left(2) + 1;
  height = bottom_right(1) - top_left(1) + 1;

  % Crop the image
  cropped_img = imcrop(original_img, [top_left(2), top_left(1), width, height]);

  % Display the original and cropped images
  figure;
  subplot(1, 2, 1);
  imshow(original_img);
  title('Original Image');

  subplot(1, 2, 2);
  imshow(cropped_img);
  title('Cropped Image');
end