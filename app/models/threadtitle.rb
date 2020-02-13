class Threadtitle < ApplicationRecord
   has_many :messages, dependent: :destroy#dependentはルームが消えたら紐づけられたpostも消されるようにするため
   
end
