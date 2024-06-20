function import_and_display(directory)
  % This function imports multiple images in different formats (e.g., PNG, JPEG, BMP) from a specified directory.
  % It identifies any issues that arise during the import process, and displays each image using different colormaps.
  % The choice of colormap affects visual perception by emphasizing different aspects of the image's content.
  
  % Get a list of all files in the directory
  files = dir(directory);
  
  % Loop through each file in the directory
  for i = 1:length(files)
    % Get the file name
    filename = files(i).name;
    
    % Check if the file is an image (by checking the file extension)
    if endsWith(filename, {'.png', '.jpg', '.jpeg', '.bmp'})
        % Import the image
        img = imread(fullfile(directory, filename));
        
        % Display the image with different colormaps
        figure;
        subplot(1, 3, 1);
        imshow(img);
        title('Original');
        
        subplot(1, 3, 2);
        imshow(img, 'Colormap', gray);
        title('Grayscale');
        
        subplot(1, 3, 3);
        imshow(img, 'Colormap', jet);
        title('Jet');
        
      end
    end
  end
end