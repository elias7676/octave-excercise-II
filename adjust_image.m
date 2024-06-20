pkg load image-acquisition;

function adjust_image(device_id, brightness, contrast)
  % This function captures an image from a connected camera device.
  % It allows users to adjust parameters such as brightness and contrast before capturing the image.

  % Create a video input object
  vid = videoinput('linuxvideo', device_id, 'YUYV_422_720x480');

  % Set the brightness and contrast
  set(vid, 'Brightness', brightness);
  set(vid, 'Contrast', contrast);

  % Capture one frame
  img = getsnapshot(vid);

  % Display the captured image
  figure;
  imshow(img);
  title('Captured Image');

  % Release the video input object
  delete(vid);
end