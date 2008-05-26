class ImageRotatorExtension < Radiant::Extension
  version "1.0"
  description "Display a random image from a directory of images."
  url ""
  
  def activate
    Page.send :include, ImageRotatorTags
  end
  
  def deactivate
  end
end
