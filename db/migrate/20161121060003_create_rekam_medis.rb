class CreateRekamMedis < ActiveRecord::Migration[5.0]
  def change
    create_table :rekam_medis do |t|
      t.date :tanggal
      t.string :no_bpjs
      t.integer :no_rm
      t.string :nama_pasien
      t.integer :kel_umur
      t.string :jk
      t.boolean :gakin
      t.string :desa
      t.string :rt
      t.string :rw
      t.string :poli
      t.boolean :pasien_b_l
      t.text :diagnosa
      t.string :icd10
      t.string :gol_penyakit
      t.string :resep

      t.timestamps
    end
  end
end
