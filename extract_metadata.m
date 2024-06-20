pkg load image;

function extract_metadata(image_path)
  % This function extracts and displays metadata from an image, such as creation date, resolution, and color space.

  % Read the image and its information
  img_info = imfinfo(image_path);

  % Display the metadata
  fprintf('Filename: %s\n', img_info.Filename);
  fprintf('FileModDate: %s\n', img_info.FileModDate);
  fprintf('FileSize: %d bytes\n', img_info.FileSize);
  fprintf('Format: %s\n', img_info.Format);
  fprintf('Width: %d pixels\n', img_info.Width);
  fprintf('Height: %d pixels\n', img_info.Height);
  fprintf('BitDepth: %d\n', img_info.BitDepth);
  fprintf('ColorType: %s\n', img_info.ColorType);
end

% Metadata in image processing is important for several reasons:  
% 1. Understanding the image: Metadata can provide information about the image's creation date, resolution, color space, and other properties. 
   % This information can be useful for understanding the image's context and how it should be processed.  
% 2. Image management: Metadata can be used to organize and manage large collections of images. 
  %  For example, images can be sorted or searched based on their metadata.  
% 3. Image processing: Certain types of metadata, such as color space or resolution, can affect how an image should be processed. 
%    For example, an image in a different color space may need to be converted before it can be processed correctly.  
% 4. Performance optimization: Metadata can be used to optimize image processing operations. 
% 5. Legal and ethical considerations: Metadata can contain information about the image's creator,
%    copyright status, and usage restrictions. This information can be important for legal and ethical reasons.