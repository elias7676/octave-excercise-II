function download_and_display_image(url, filename)
  % This function downloads an image from a specified URL and saves it locally.
  % It handles different image formats and sources.
  % It displays the downloaded image and any issues encountered during the process.

  % Try to download the image
    urlwrite(url, filename);
    fprintf('Image downloaded successfully.\n');

  end

  % Try to read and display the downloaded image
  try
    downloaded_img = imread(filename);
    figure;
    imshow(downloaded_img);
    title('Downloaded Image');
  end
end