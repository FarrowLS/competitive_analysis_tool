class Company < ActiveRecord::Base
  mount_uploader :cat_file, CatFileUploader
  validates :cat_file, format: {with: %r{\.pdf|doc|docx|xls|xlsx|ppt|pptx}i,message: 'must be a .pdf, doc, docx, xls, xlsx, ppt, pptx file.'}
end
