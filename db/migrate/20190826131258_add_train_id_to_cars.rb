class AddTrainIdToCars < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :cars, :train
  end
end
