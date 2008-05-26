module ImageRotatorTags
  include Radiant::Taggable

  IMAGES_ROOT = "#{RAILS_ROOT}/public/images"
  IMAGES_URI = "/images"

  tag 'rotator' do |tag|
    return '' unless dir = tag.attr['dir']
    dir.gsub!(/\.+\//, '')

    return '' unless File.exists?(path = "#{IMAGES_ROOT}/#{dir}")

    type = tag.attr['type'] || 'jpg'
    images = Dir.glob("#{path}/*.#{type}")

    IMAGES_URI + "/#{dir}/" + File.basename(images[rand(images.size)])
  end
end
