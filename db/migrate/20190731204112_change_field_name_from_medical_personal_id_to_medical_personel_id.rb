class ChangeFieldNameFromMedicalPersonalIdToMedicalPersonelId < ActiveRecord::Migration[5.2]
  def change
    rename_column :health_cases, :medical_personal_id, :medical_personel_id
  end
end
