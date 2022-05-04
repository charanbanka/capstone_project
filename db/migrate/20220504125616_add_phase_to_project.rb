class AddPhaseToProject < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :phase, null: false, foreign_key: true
  end
end
