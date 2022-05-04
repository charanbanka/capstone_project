class AddPhaseToTask < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :phase, null: false, foreign_key: true
  end
end
