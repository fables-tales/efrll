f = File.extname(__FILE__)

p f

def file_allowed?(filename)
  extension = File.extname(filename)
  [".png", ".jpg", ".bmp"].include?(extension) && File.exists?(filename)
end

p file_allowed?("half_sam.png")
p file_allowed?("12factor.epub")
