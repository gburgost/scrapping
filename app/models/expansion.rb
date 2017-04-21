class Expansion < ApplicationRecord
  validates :link, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
end
