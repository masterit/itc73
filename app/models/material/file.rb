class Material::File < ActiveRecord::Base
  attr_accessible :file, :material, :material_id

  belongs_to :material

  mount_uploader :file, MaterialFileUploader
end
